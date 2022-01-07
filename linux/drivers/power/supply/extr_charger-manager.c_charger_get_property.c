
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {struct charger_desc* desc; int emergency_stop; } ;
struct charger_desc {int fullbatt_uV; int psy_fuel_gauge; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ENODEV ;
 int POWER_SUPPLY_HEALTH_COLD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int cm_get_battery_temperature (struct charger_manager*,int*) ;
 int get_batt_uV (struct charger_manager*,int*) ;
 int is_batt_present (struct charger_manager*) ;
 int is_charging (struct charger_manager*) ;
 int is_ext_pwr_online (struct charger_manager*) ;
 int is_full_charged (struct charger_manager*) ;
 struct power_supply* power_supply_get_by_name (int ) ;
 struct charger_manager* power_supply_get_drvdata (struct power_supply*) ;
 int power_supply_get_property (struct power_supply*,int const,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static int charger_get_property(struct power_supply *psy,
  enum power_supply_property psp,
  union power_supply_propval *val)
{
 struct charger_manager *cm = power_supply_get_drvdata(psy);
 struct charger_desc *desc = cm->desc;
 struct power_supply *fuel_gauge = ((void*)0);
 int ret = 0;
 int uV;

 switch (psp) {
 case 131:
  if (is_charging(cm))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (is_ext_pwr_online(cm))
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 134:
  if (cm->emergency_stop > 0)
   val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  else if (cm->emergency_stop < 0)
   val->intval = POWER_SUPPLY_HEALTH_COLD;
  else
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
  break;
 case 132:
  if (is_batt_present(cm))
   val->intval = 1;
  else
   val->intval = 0;
  break;
 case 128:
  ret = get_batt_uV(cm, &val->intval);
  break;
 case 135:
  fuel_gauge = power_supply_get_by_name(cm->desc->psy_fuel_gauge);
  if (!fuel_gauge) {
   ret = -ENODEV;
   break;
  }
  ret = power_supply_get_property(fuel_gauge,
    135, val);
  break;
 case 130:
 case 129:
  return cm_get_battery_temperature(cm, &val->intval);
 case 138:
  if (!is_batt_present(cm)) {

   val->intval = 100;
   break;
  }

  fuel_gauge = power_supply_get_by_name(cm->desc->psy_fuel_gauge);
  if (!fuel_gauge) {
   ret = -ENODEV;
   break;
  }

  ret = power_supply_get_property(fuel_gauge,
     138, val);
  if (ret)
   break;

  if (val->intval > 100) {
   val->intval = 100;
   break;
  }
  if (val->intval < 0)
   val->intval = 0;


  if (is_charging(cm))
   break;





  ret = get_batt_uV(cm, &uV);
  if (ret) {

   ret = 0;
   break;
  }

  if (desc->fullbatt_uV > 0 && uV >= desc->fullbatt_uV &&
      !is_charging(cm)) {
   val->intval = 100;
   break;
  }

  break;
 case 133:
  if (is_ext_pwr_online(cm))
   val->intval = 1;
  else
   val->intval = 0;
  break;
 case 137:
  if (is_full_charged(cm))
   val->intval = 1;
  else
   val->intval = 0;
  ret = 0;
  break;
 case 136:
  if (is_charging(cm)) {
   fuel_gauge = power_supply_get_by_name(
     cm->desc->psy_fuel_gauge);
   if (!fuel_gauge) {
    ret = -ENODEV;
    break;
   }

   ret = power_supply_get_property(fuel_gauge,
      136,
      val);
   if (ret) {
    val->intval = 1;
    ret = 0;
   } else {

    val->intval = (val->intval > 0) ?
      val->intval : 1;
   }
  } else {
   val->intval = 0;
  }
  break;
 default:
  return -EINVAL;
 }
 if (fuel_gauge)
  power_supply_put(fuel_gauge);
 return ret;
}
