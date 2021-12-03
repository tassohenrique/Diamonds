class CounterController < ApplicationController
  def diamonds_counter
    @results = filter_diamonds("<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>")
  end

  def filter_diamonds(string)
    string.scan(/\.|<>/).tally
  end

end
