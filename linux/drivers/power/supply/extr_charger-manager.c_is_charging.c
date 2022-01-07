
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {scalar_t__ intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {TYPE_1__* desc; int dev; int charger_enabled; scalar_t__ emergency_stop; } ;
struct TYPE_2__ {scalar_t__* psy_charger_stat; } ;


 int POWER_SUPPLY_PROP_ONLINE ;
 int POWER_SUPPLY_PROP_STATUS ;
 scalar_t__ POWER_SUPPLY_STATUS_DISCHARGING ;
 scalar_t__ POWER_SUPPLY_STATUS_FULL ;
 scalar_t__ POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int dev_err (int ,char*,scalar_t__) ;
 int dev_warn (int ,char*,scalar_t__) ;
 int is_batt_present (struct charger_manager*) ;
 struct power_supply* power_supply_get_by_name (scalar_t__) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static bool is_charging(struct charger_manager *cm)
{
 int i, ret;
 bool charging = 0;
 struct power_supply *psy;
 union power_supply_propval val;


 if (!is_batt_present(cm))
  return 0;


 for (i = 0; cm->desc->psy_charger_stat[i]; i++) {

  if (cm->emergency_stop)
   continue;
  if (!cm->charger_enabled)
   continue;

  psy = power_supply_get_by_name(cm->desc->psy_charger_stat[i]);
  if (!psy) {
   dev_err(cm->dev, "Cannot find power supply \"%s\"\n",
     cm->desc->psy_charger_stat[i]);
   continue;
  }


  ret = power_supply_get_property(psy, POWER_SUPPLY_PROP_ONLINE,
    &val);
  if (ret) {
   dev_warn(cm->dev, "Cannot read ONLINE value from %s\n",
     cm->desc->psy_charger_stat[i]);
   power_supply_put(psy);
   continue;
  }
  if (val.intval == 0) {
   power_supply_put(psy);
   continue;
  }





  ret = power_supply_get_property(psy, POWER_SUPPLY_PROP_STATUS,
    &val);
  power_supply_put(psy);
  if (ret) {
   dev_warn(cm->dev, "Cannot read STATUS value from %s\n",
     cm->desc->psy_charger_stat[i]);
   continue;
  }
  if (val.intval == POWER_SUPPLY_STATUS_FULL ||
    val.intval == POWER_SUPPLY_STATUS_DISCHARGING ||
    val.intval == POWER_SUPPLY_STATUS_NOT_CHARGING)
   continue;


  charging = 1;
  break;
 }

 return charging;
}
