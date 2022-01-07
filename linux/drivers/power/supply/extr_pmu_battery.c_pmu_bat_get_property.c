
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct pmu_battery_info {int flags; int charge; int max_charge; int amperage; int voltage; int time_remaining; } ;
struct pmu_battery_dev {struct pmu_battery_info* pbi; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int PMU_BATT_CHARGING ;
 int PMU_BATT_PRESENT ;
 int PMU_PWR_AC_PRESENT ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int pmu_bat_get_model_name (struct pmu_battery_info*) ;
 int pmu_power_flags ;
 struct pmu_battery_dev* to_pmu_battery_dev (struct power_supply*) ;

__attribute__((used)) static int pmu_bat_get_property(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct pmu_battery_dev *pbat = to_pmu_battery_dev(psy);
 struct pmu_battery_info *pbi = pbat->pbi;

 switch (psp) {
 case 130:
  if (pbi->flags & PMU_BATT_CHARGING)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (pmu_power_flags & PMU_PWR_AC_PRESENT)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 131:
  val->intval = !!(pbi->flags & PMU_BATT_PRESENT);
  break;
 case 132:
  val->strval = pmu_bat_get_model_name(pbi);
  break;
 case 134:
  val->intval = pbi->charge * 1000;
  break;
 case 133:
  val->intval = pbi->max_charge * 1000;
  break;
 case 135:
  val->intval = pbi->amperage * 1000;
  break;
 case 128:
  val->intval = pbi->voltage * 1000;
  break;
 case 129:
  val->intval = pbi->time_remaining;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
