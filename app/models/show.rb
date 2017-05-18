class Show < ActiveRecord::Base

#  def self.create_table
#    # create table using SQL here
#    sql = <<-SQL
#    CREATE TABLE IF NOT EXISTS shows (
#      id INTEGER PRIMARY KEY,
#      name TEXT,
#      network TEXT,
#      day TEXT,
#      rating INTEGER
#    )
#    SQL

#    ActiveRecord::Base.connection.execute(sql)
#  end

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    Show.order(:rating).last
  end
  def self.lowest_rating
    Show.minimum(:rating)
  end
  def self.least_popular_show
    Show.order(:rating).first
  end
  def self.ratings_sum
    Show.sum(:rating)
  end
  def self.popular_shows
    Show.where("rating > 5")
  end
  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
