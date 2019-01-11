require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |attribute, data|
      if attribute["status"] == "Winner"
        return attribute["name"].split(" ").first
      end
  end
end
#binding.pry


def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |attribute, data|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
hometown_array = []
  data.each do |season, contestant|
    contestant.each do |attribute, data|
      if attribute["hometown"] == hometown
        hometown_array.push(attribute["name"])
      end
    end
  end
hometown_array.length
#binding.pry
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |attribute, data|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
age_array = []
avergare_age = 0
    data[season].each do |attribute, data|
      age_array.push(attribute["age"].to_i)
    end
(age_array.sum / age_array.length.to_f).round
#binding.pry
end
