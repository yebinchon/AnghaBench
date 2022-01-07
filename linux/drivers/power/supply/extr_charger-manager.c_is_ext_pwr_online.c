
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {scalar_t__ intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {TYPE_1__* desc; int dev; } ;
struct TYPE_2__ {scalar_t__* psy_charger_stat; } ;


 int POWER_SUPPLY_PROP_ONLINE ;
 int dev_err (int ,char*,scalar_t__) ;
 struct power_supply* power_supply_get_by_name (scalar_t__) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static bool is_ext_pwr_online(struct charger_manager *cm)
{
 union power_supply_propval val;
 struct power_supply *psy;
 bool online = 0;
 int i, ret;


 for (i = 0; cm->desc->psy_charger_stat[i]; i++) {
  psy = power_supply_get_by_name(cm->desc->psy_charger_stat[i]);
  if (!psy) {
   dev_err(cm->dev, "Cannot find power supply \"%s\"\n",
     cm->desc->psy_charger_stat[i]);
   continue;
  }

  ret = power_supply_get_property(psy, POWER_SUPPLY_PROP_ONLINE,
    &val);
  power_supply_put(psy);
  if (ret == 0 && val.intval) {
   online = 1;
   break;
  }
 }

 return online;
}
