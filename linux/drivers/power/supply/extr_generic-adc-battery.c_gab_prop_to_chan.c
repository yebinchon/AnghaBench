
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
typedef enum gab_chan_type { ____Placeholder_gab_chan_type } gab_chan_type ;


 int GAB_CURRENT ;
 int GAB_POWER ;
 int GAB_VOLTAGE ;



 int WARN_ON (int) ;

__attribute__((used)) static enum gab_chan_type gab_prop_to_chan(enum power_supply_property psp)
{
 switch (psp) {
 case 129:
  return GAB_POWER;
 case 128:
  return GAB_VOLTAGE;
 case 130:
  return GAB_CURRENT;
 default:
  WARN_ON(1);
  break;
 }
 return GAB_POWER;
}
