defmodule AshPhoenix.Test.Artist do
  @moduledoc false

  use Ash.Resource,
    domain: AshPhoenix.Test.Domain,
    data_layer: Ash.DataLayer.Ets

  ets do
    private? true
  end

  attributes do
    uuid_primary_key :id
    attribute :name, :string, allow_nil?: false
  end

  actions do
    defaults [:create, :read, :update, :destroy]
  end
end
