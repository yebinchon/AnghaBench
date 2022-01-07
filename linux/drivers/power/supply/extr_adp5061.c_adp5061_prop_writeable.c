
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
__attribute__((used)) static int adp5061_prop_writeable(struct power_supply *psy,
      enum power_supply_property psp)
{
 switch (psp) {
 case 132:
 case 129:
 case 128:
 case 133:
 case 134:
 case 131:
 case 130:
 case 135:
  return 1;
 default:
  return 0;
 }
}
