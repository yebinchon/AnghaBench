
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct da9030_charger {int fault; } ;


 int DA9030_FAULT_LOG_OVER_TEMP ;
 int DA9030_FAULT_LOG_VBAT_OVER ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;

__attribute__((used)) static void da9030_battery_check_health(struct da9030_charger *charger,
        union power_supply_propval *val)
{
 if (charger->fault & DA9030_FAULT_LOG_OVER_TEMP)
  val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
 else if (charger->fault & DA9030_FAULT_LOG_VBAT_OVER)
  val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
 else
  val->intval = POWER_SUPPLY_HEALTH_GOOD;
}
