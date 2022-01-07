
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT ;

__attribute__((used)) static int smbb_charger_writable_property(struct power_supply *psy,
  enum power_supply_property psp)
{
 return psp == POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT;
}
