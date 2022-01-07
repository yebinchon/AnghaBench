
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct smbb_charger {unsigned long status; int* attr; int statlock; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 size_t ATTR_BAT_IMAX ;
 size_t ATTR_BAT_VMAX ;
 int EINVAL ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;
 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 unsigned long STATUS_BAT_HOT ;
 unsigned long STATUS_BAT_OK ;
 unsigned long STATUS_BAT_PRESENT ;
 unsigned long STATUS_CHG_DONE ;
 unsigned long STATUS_CHG_FAST ;
 unsigned long STATUS_CHG_GONE ;
 unsigned long STATUS_CHG_TRKL ;
 unsigned long STATUS_DCIN_VALID ;
 unsigned long STATUS_USBIN_VALID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct smbb_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int smbb_battery_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct smbb_charger *chg = power_supply_get_drvdata(psy);
 unsigned long status;
 int rc = 0;

 mutex_lock(&chg->statlock);
 status = chg->status;
 mutex_unlock(&chg->statlock);

 switch (psp) {
 case 131:
  if (status & STATUS_CHG_GONE)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (!(status & (STATUS_DCIN_VALID | STATUS_USBIN_VALID)))
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (status & STATUS_CHG_DONE)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else if (!(status & STATUS_BAT_OK))
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (status & (STATUS_CHG_FAST | STATUS_CHG_TRKL))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 133:
  if (status & STATUS_BAT_OK)
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
  else if (status & STATUS_BAT_HOT)
   val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  else
   val->intval = POWER_SUPPLY_HEALTH_COLD;
  break;
 case 135:
  if (status & STATUS_CHG_FAST)
   val->intval = POWER_SUPPLY_CHARGE_TYPE_FAST;
  else if (status & STATUS_CHG_TRKL)
   val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
  else
   val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
  break;
 case 132:
  val->intval = !!(status & STATUS_BAT_PRESENT);
  break;
 case 134:
  val->intval = chg->attr[ATTR_BAT_IMAX];
  break;
 case 129:
  val->intval = chg->attr[ATTR_BAT_VMAX];
  break;
 case 130:




  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 128:
  val->intval = 3000000;
  break;
 default:
  rc = -EINVAL;
  break;
 }

 return rc;
}
