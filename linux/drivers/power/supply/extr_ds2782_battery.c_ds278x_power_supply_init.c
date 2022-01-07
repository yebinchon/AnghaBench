
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_desc {int * external_power_changed; int get_property; int num_properties; int properties; int type; } ;


 int ARRAY_SIZE (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int ds278x_battery_get_property ;
 int ds278x_battery_props ;

__attribute__((used)) static void ds278x_power_supply_init(struct power_supply_desc *battery)
{
 battery->type = POWER_SUPPLY_TYPE_BATTERY;
 battery->properties = ds278x_battery_props;
 battery->num_properties = ARRAY_SIZE(ds278x_battery_props);
 battery->get_property = ds278x_battery_get_property;
 battery->external_power_changed = ((void*)0);
}
