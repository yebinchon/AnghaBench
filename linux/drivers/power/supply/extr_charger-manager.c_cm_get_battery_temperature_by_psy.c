
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {int dummy; } ;
struct charger_manager {TYPE_1__* desc; } ;
struct TYPE_2__ {int psy_fuel_gauge; } ;


 int ENODEV ;
 int POWER_SUPPLY_PROP_TEMP ;
 struct power_supply* power_supply_get_by_name (int ) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static int cm_get_battery_temperature_by_psy(struct charger_manager *cm,
     int *temp)
{
 struct power_supply *fuel_gauge;
 int ret;

 fuel_gauge = power_supply_get_by_name(cm->desc->psy_fuel_gauge);
 if (!fuel_gauge)
  return -ENODEV;

 ret = power_supply_get_property(fuel_gauge,
    POWER_SUPPLY_PROP_TEMP,
    (union power_supply_propval *)temp);
 power_supply_put(fuel_gauge);

 return ret;
}
