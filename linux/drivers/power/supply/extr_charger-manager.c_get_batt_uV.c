
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {TYPE_1__* desc; } ;
struct TYPE_2__ {int psy_fuel_gauge; } ;


 int ENODEV ;
 int POWER_SUPPLY_PROP_VOLTAGE_NOW ;
 struct power_supply* power_supply_get_by_name (int ) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static int get_batt_uV(struct charger_manager *cm, int *uV)
{
 union power_supply_propval val;
 struct power_supply *fuel_gauge;
 int ret;

 fuel_gauge = power_supply_get_by_name(cm->desc->psy_fuel_gauge);
 if (!fuel_gauge)
  return -ENODEV;

 ret = power_supply_get_property(fuel_gauge,
    POWER_SUPPLY_PROP_VOLTAGE_NOW, &val);
 power_supply_put(fuel_gauge);
 if (ret)
  return ret;

 *uV = val.intval;
 return 0;
}
