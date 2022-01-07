
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {scalar_t__ intval; } ;
struct power_supply {int dummy; } ;
struct charger_manager {struct charger_desc* desc; } ;
struct charger_desc {scalar_t__ fullbatt_full_capacity; int fullbatt_uV; scalar_t__ fullbatt_soc; int psy_fuel_gauge; } ;


 int POWER_SUPPLY_PROP_CAPACITY ;
 int POWER_SUPPLY_PROP_CHARGE_FULL ;
 int get_batt_uV (struct charger_manager*,int*) ;
 int is_batt_present (struct charger_manager*) ;
 struct power_supply* power_supply_get_by_name (int ) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;

__attribute__((used)) static bool is_full_charged(struct charger_manager *cm)
{
 struct charger_desc *desc = cm->desc;
 union power_supply_propval val;
 struct power_supply *fuel_gauge;
 bool is_full = 0;
 int ret = 0;
 int uV;


 if (!is_batt_present(cm))
  return 0;

 fuel_gauge = power_supply_get_by_name(cm->desc->psy_fuel_gauge);
 if (!fuel_gauge)
  return 0;

 if (desc->fullbatt_full_capacity > 0) {
  val.intval = 0;


  ret = power_supply_get_property(fuel_gauge,
    POWER_SUPPLY_PROP_CHARGE_FULL, &val);
  if (!ret && val.intval > desc->fullbatt_full_capacity) {
   is_full = 1;
   goto out;
  }
 }


 if (desc->fullbatt_uV > 0) {
  ret = get_batt_uV(cm, &uV);
  if (!ret && uV >= desc->fullbatt_uV) {
   is_full = 1;
   goto out;
  }
 }


 if (desc->fullbatt_soc > 0) {
  val.intval = 0;

  ret = power_supply_get_property(fuel_gauge,
    POWER_SUPPLY_PROP_CAPACITY, &val);
  if (!ret && val.intval >= desc->fullbatt_soc) {
   is_full = 1;
   goto out;
  }
 }

out:
 power_supply_put(fuel_gauge);
 return is_full;
}
