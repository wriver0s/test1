# Data
require 'date'
id = 0

#actual monday

actual_monday =Date.parse("2021-11-15")#"Date.today - (Date.today.wday - 1)

events = [
  { "id" => (id = id.next),
    "start_date" => "2021-11-15T00:00:00-05:00",
    "title" => "Ruby Basics 1",
    "end_date" => "",
    "notes" => "Ruby Basics 1 notes",
    "guests" => %w[Teddy Codeka],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-15T12:00:00-05:00",
    "title" => "English Course",
    "end_date" => "2021-11-15T13:30:00-05:00",
    "notes" => "English notes",
    "guests" => ["Stephanie"],
    "calendar" => "english" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-16T00:00:00-05:00",
    "title" => "Ruby Basics 2",
    "end_date" => "",
    "notes" => "Ruby Basics 2 notes",
    "guests" => %w[Andre Codeka],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-16T12:45:00-05:00",
    "title" => "Soft Skills - Mindsets",
    "end_date" => "2021-11-15T13:30:00-05:00",
    "notes" => "Some extra notes",
    "guests" => ["Diego"],
    "calendar" => "soft-skills" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-17T00:00:00-05:00",
    "title" => "Ruby Methods",
    "end_date" => "",
    "notes" => "Ruby Methods notes",
    "guests" => %w[Diego Andre Teddy Codeka],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-17T12:00:00-05:00",
    "title" => "English Course",
    "end_date" => "2021-11-15T13:30:00-05:00",
    "notes" => "English notes",
    "guests" => ["Stephanie"],
    "calendar" => "english" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-18T09:00:00-05:00",
    "title" => "Summary Workshop",
    "end_date" => "2021-11-19T13:30:00-05:00",
    "notes" => "A lot of notes",
    "guests" => %w[Diego Teddy Andre Codeka],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-18T09:00:00-05:00",
    "title" => "Extended Project",
    "end_date" => "",
    "notes" => "",
    "guests" => [],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-19T09:00:00-05:00",
    "title" => "Extended Project",
    "end_date" => "",
    "notes" => "",
    "guests" => [],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-19T12:00:00-05:00",
    "title" => "English for Engineers",
    "end_date" => "2021-11-19T13:30:00-05:00",
    "notes" => "English notes",
    "guests" => ["Stephanie"],
    "calendar" => "english" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-20T10:00:00-05:00",
    "title" => "Breakfast with my family",
    "end_date" => "2021-11-20T11:00:00-05:00",
    "notes" => "",
    "guests" => [],
    "calendar" => "default" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-20T15:00:00-05:00",
    "title" => "Study",
    "end_date" => "2021-11-20T20:00:00-05:00",
    "notes" => "",
    "guests" => [],
    "calendar" => "default" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-25T09:00:00-05:00",
    "title" => "Extended Project",
    "end_date" => "",
    "notes" => "",
    "guests" => [],
    "calendar" => "web-dev" },
  { "id" => (id = id.next),
    "start_date" => "2021-11-26T09:00:00-05:00",
    "title" => "Extended Project",
    "end_date" => "",
    "notes" => "",
    "guests" => [],
    "calendar" => "web-dev" },
]


# Methods 

#method main

def main()
  action = nil
  print("action: ")  #-> line : "action: show"
  action = gets.chomp
  case "action"
    #action()
  when "list"
    #list()
  when "create"
    #create()
  when "show"
    #show()
  when "update"
    #update()
  when "delete"
    #delete()
  when "next"
    #change_week()
  when "prev"
    #change_week()
  when "exit"
    false
  else
    #add 
  end
end

#method display calendar

def display_calendar(actual_monday,events)
  
  order_events = events.sort_by { | id | id["start_date"]}
  for index_day in 0..6
    spaces = true
    print("#{(actual_monday + index_day).strftime("%a %b %d")}")
    order_events.each do |event|
      if Date.parse(event["start_date"]) == actual_monday + index_day
        if event["end_date"].empty?
          spaces ? print("                ") : print("                           ")
        else
          spaces ? print("  ") : print("            ")
          print("#{DateTime.parse(event["start_date"]).strftime("%H:%M")}")
          print(" - ")
          print("#{DateTime.parse(event["end_date"]).strftime("%H:%M")}")
          print(" ")
        end
        puts("#{event["title"]} #{event["id"]}")
        spaces = false
      end
      
    end
    puts()
  end
end


#method create






# Main Program
puts("-----------------------------Welcome to CalenCLI------------------------------")
puts("")
display_calendar(actual_monday,events)
#add look first week

puts("")
puts("------------------------------------------------------------------------------")
puts("list | create | show | update | delete | next | prev | exit")
puts("")
while !main()
  puts("------------------------------------------------------------------------------")
  puts("list | create | show | update | delete | next | prev | exit")
  puts("")
end

#asdasdas