
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct bq24735 {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int bq24735_charger_is_charging (struct bq24735*) ;
 int bq24735_charger_is_present (struct bq24735*) ;
 struct bq24735* to_bq24735 (struct power_supply*) ;

__attribute__((used)) static int bq24735_charger_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct bq24735 *charger = to_bq24735(psy);

 switch (psp) {
 case 129:
  val->intval = bq24735_charger_is_present(charger) ? 1 : 0;
  break;
 case 128:
  switch (bq24735_charger_is_charging(charger)) {
  case 1:
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
   break;
  case 0:
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
   break;
  default:
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
   break;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
