
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct lt3651_charger {int chrg_gpio; int fault_gpio; int acpr_gpio; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_UNKNOWN ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;



 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int gpiod_get_value (int ) ;
 struct lt3651_charger* psy_to_lt3651_charger (struct power_supply*) ;

__attribute__((used)) static int lt3651_charger_get_property(struct power_supply *psy,
  enum power_supply_property psp, union power_supply_propval *val)
{
 struct lt3651_charger *lt3651_charger = psy_to_lt3651_charger(psy);

 switch (psp) {
 case 128:
  if (!lt3651_charger->chrg_gpio) {
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
   break;
  }
  if (gpiod_get_value(lt3651_charger->chrg_gpio))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 129:
  val->intval = gpiod_get_value(lt3651_charger->acpr_gpio);
  break;
 case 130:
  if (!lt3651_charger->fault_gpio) {
   val->intval = POWER_SUPPLY_HEALTH_UNKNOWN;
   break;
  }
  if (!gpiod_get_value(lt3651_charger->fault_gpio)) {
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
   break;
  }




  if (!lt3651_charger->chrg_gpio) {
   val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
   break;
  }
  val->intval = gpiod_get_value(lt3651_charger->chrg_gpio) ?
    POWER_SUPPLY_HEALTH_OVERHEAT :
    POWER_SUPPLY_HEALTH_DEAD;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
