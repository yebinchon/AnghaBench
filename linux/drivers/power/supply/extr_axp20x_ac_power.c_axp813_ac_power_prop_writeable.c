
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT ;
 int POWER_SUPPLY_PROP_VOLTAGE_MIN ;

__attribute__((used)) static int axp813_ac_power_prop_writeable(struct power_supply *psy,
       enum power_supply_property psp)
{
 return psp == POWER_SUPPLY_PROP_VOLTAGE_MIN ||
        psp == POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT;
}
