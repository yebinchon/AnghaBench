
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct da9030_charger {scalar_t__ is_on; scalar_t__ chdet; } ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;

__attribute__((used)) static void da9030_battery_check_status(struct da9030_charger *charger,
        union power_supply_propval *val)
{
 if (charger->chdet) {
  if (charger->is_on)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {
  val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
 }
}
