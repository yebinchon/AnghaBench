
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp20x_usb_power {int axp20x_id; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int AXP813_ID ;
 int EINVAL ;


 int axp20x_usb_power_set_current_max (struct axp20x_usb_power*,int ) ;
 int axp20x_usb_power_set_voltage_min (struct axp20x_usb_power*,int ) ;
 int axp813_usb_power_set_current_max (struct axp20x_usb_power*,int ) ;
 struct axp20x_usb_power* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int axp20x_usb_power_set_property(struct power_supply *psy,
      enum power_supply_property psp,
      const union power_supply_propval *val)
{
 struct axp20x_usb_power *power = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  return axp20x_usb_power_set_voltage_min(power, val->intval);

 case 129:
  if (power->axp20x_id == AXP813_ID)
   return axp813_usb_power_set_current_max(power,
        val->intval);
  return axp20x_usb_power_set_current_max(power, val->intval);

 default:
  return -EINVAL;
 }

 return -EINVAL;
}
