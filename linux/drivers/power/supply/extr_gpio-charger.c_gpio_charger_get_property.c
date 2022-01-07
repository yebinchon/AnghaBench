
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct gpio_charger {int charge_status; int gpiod; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int gpiod_get_value_cansleep (int ) ;
 struct gpio_charger* psy_to_gpio_charger (struct power_supply*) ;

__attribute__((used)) static int gpio_charger_get_property(struct power_supply *psy,
  enum power_supply_property psp, union power_supply_propval *val)
{
 struct gpio_charger *gpio_charger = psy_to_gpio_charger(psy);

 switch (psp) {
 case 129:
  val->intval = gpiod_get_value_cansleep(gpio_charger->gpiod);
  break;
 case 128:
  if (gpiod_get_value_cansleep(gpio_charger->charge_status))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
