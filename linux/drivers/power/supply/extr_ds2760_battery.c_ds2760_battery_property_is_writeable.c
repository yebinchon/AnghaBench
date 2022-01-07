
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;





__attribute__((used)) static int ds2760_battery_property_is_writeable(struct power_supply *psy,
      enum power_supply_property psp)
{
 switch (psp) {
 case 129:
 case 128:
  return 1;

 default:
  break;
 }

 return 0;
}
