require 'jeffries_tube'
require 'rails'
module JeffriesTube
  class Railtie < ::Rails::Railtie
    railtie_name :jeffries_tube

    rake_tasks do
      load "tasks/db.rake"
    end

    console do
      ActiveRecord::Base.connection
    end
  end
end