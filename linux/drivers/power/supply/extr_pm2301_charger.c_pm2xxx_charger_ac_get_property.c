
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct TYPE_4__ {int cv_active; int charger_connected; int charger_online; int wd_expired; } ;
struct TYPE_3__ {int ovv; int main_thermal_prot; int mainextchnotok; } ;
struct pm2xxx_charger {TYPE_2__ ac; TYPE_1__ flags; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;




 int pm2xxx_charger_get_ac_cv (struct pm2xxx_charger*) ;
 int psy_to_ux500_charger (struct power_supply*) ;
 struct pm2xxx_charger* to_pm2xxx_charger_ac_device_info (int ) ;

__attribute__((used)) static int pm2xxx_charger_ac_get_property(struct power_supply *psy,
 enum power_supply_property psp,
 union power_supply_propval *val)
{
 struct pm2xxx_charger *pm2;

 pm2 = to_pm2xxx_charger_ac_device_info(psy_to_ux500_charger(psy));

 switch (psp) {
 case 131:
  if (pm2->flags.mainextchnotok)
   val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  else if (pm2->ac.wd_expired)
   val->intval = POWER_SUPPLY_HEALTH_DEAD;
  else if (pm2->flags.main_thermal_prot)
   val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  else if (pm2->flags.ovv)
   val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  else
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
  break;
 case 130:
  val->intval = pm2->ac.charger_online;
  break;
 case 129:
  val->intval = pm2->ac.charger_connected;
  break;
 case 128:
  pm2->ac.cv_active = pm2xxx_charger_get_ac_cv(pm2);
  val->intval = pm2->ac.cv_active;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
