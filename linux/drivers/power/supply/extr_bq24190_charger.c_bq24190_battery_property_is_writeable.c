
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;





__attribute__((used)) static int bq24190_battery_property_is_writeable(struct power_supply *psy,
  enum power_supply_property psp)
{
 int ret;

 switch (psp) {
 case 129:
 case 128:
  ret = 1;
  break;
 default:
  ret = 0;
 }

 return ret;
}
