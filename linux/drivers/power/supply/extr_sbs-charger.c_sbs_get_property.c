
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct sbs_info {unsigned int last_state; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;




 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 unsigned int SBS_CHARGER_STATUS_AC_PRESENT ;
 unsigned int SBS_CHARGER_STATUS_BATTERY_PRESENT ;
 unsigned int SBS_CHARGER_STATUS_CHARGE_INHIBITED ;
 unsigned int SBS_CHARGER_STATUS_RES_COLD ;
 unsigned int SBS_CHARGER_STATUS_RES_HOT ;
 struct sbs_info* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int sbs_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct sbs_info *chip = power_supply_get_drvdata(psy);
 unsigned int reg;

 reg = chip->last_state;

 switch (psp) {
 case 129:
  val->intval = !!(reg & SBS_CHARGER_STATUS_BATTERY_PRESENT);
  break;

 case 130:
  val->intval = !!(reg & SBS_CHARGER_STATUS_AC_PRESENT);
  break;

 case 128:
  val->intval = POWER_SUPPLY_STATUS_UNKNOWN;

  if (!(reg & SBS_CHARGER_STATUS_BATTERY_PRESENT))
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  else if (reg & SBS_CHARGER_STATUS_AC_PRESENT &&
    !(reg & SBS_CHARGER_STATUS_CHARGE_INHIBITED))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;

  break;

 case 131:
  if (reg & SBS_CHARGER_STATUS_RES_COLD)
   val->intval = POWER_SUPPLY_HEALTH_COLD;
  if (reg & SBS_CHARGER_STATUS_RES_HOT)
   val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  else
   val->intval = POWER_SUPPLY_HEALTH_GOOD;

  break;

 default:
  return -EINVAL;
 }

 return 0;
}
