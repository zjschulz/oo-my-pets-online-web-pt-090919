require 'pry'

class Owner
  
 attr_reader :name, :species
 
 @@all = []
 
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
 end
 
 def self.all
   @@all
 end
 
 def self.count
   @@all.size
 end
 
 def self.reset_all
   @@all.clear
 end
 
 def say_species
   "I am a #{@species}."
 end
 
  def cats
    Cat.all.select do |x|
      x.owner == self
    end
  end

  def dogs
    Dog.all.select do |x|
      x.owner == self
    end
  end
  
  def buy_cat(name)
    
  end
  
  def buy_dog(name)
    
  end

  def walk_dogs
    
  end

  def feed_cats
  end
  
  def sell_pets
  end

  def list_pets
  end

end