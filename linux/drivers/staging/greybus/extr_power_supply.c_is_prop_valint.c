
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int POWER_SUPPLY_PROP_MODEL_NAME ;

__attribute__((used)) static int is_prop_valint(enum power_supply_property psp)
{
 return ((psp < POWER_SUPPLY_PROP_MODEL_NAME) ? 1 : 0);
}
