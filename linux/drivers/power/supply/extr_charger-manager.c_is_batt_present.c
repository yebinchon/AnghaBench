
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {TYPE_1__* desc; int dev; } ;
struct TYPE_2__ {int battery_present; int * psy_charger_stat; int psy_fuel_gauge; } ;






 int POWER_SUPPLY_PROP_PRESENT ;
 int dev_err (int ,char*,int ) ;
 struct power_supply* power_supply_get_by_name (int ) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static bool is_batt_present(struct charger_manager *cm)
{
 union power_supply_propval val;
 struct power_supply *psy;
 bool present = 0;
 int i, ret;

 switch (cm->desc->battery_present) {
 case 131:
  present = 1;
  break;
 case 128:
  break;
 case 129:
  psy = power_supply_get_by_name(cm->desc->psy_fuel_gauge);
  if (!psy)
   break;

  ret = power_supply_get_property(psy, POWER_SUPPLY_PROP_PRESENT,
    &val);
  if (ret == 0 && val.intval)
   present = 1;
  power_supply_put(psy);
  break;
 case 130:
  for (i = 0; cm->desc->psy_charger_stat[i]; i++) {
   psy = power_supply_get_by_name(
     cm->desc->psy_charger_stat[i]);
   if (!psy) {
    dev_err(cm->dev, "Cannot find power supply \"%s\"\n",
     cm->desc->psy_charger_stat[i]);
    continue;
   }

   ret = power_supply_get_property(psy,
    POWER_SUPPLY_PROP_PRESENT, &val);
   power_supply_put(psy);
   if (ret == 0 && val.intval) {
    present = 1;
    break;
   }
  }
  break;
 }

 return present;
}
