
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp20x_ac_power {int regmap; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int AXP813_ACIN_PATH_CTRL ;
 int AXP813_CURR_LIMIT_MASK ;
 int AXP813_CURR_LIMIT_UA_TO_BIT (int) ;
 int AXP813_VHOLD_MASK ;
 int AXP813_VHOLD_UV_TO_BIT (int) ;
 int EINVAL ;


 struct axp20x_ac_power* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int axp813_ac_power_set_property(struct power_supply *psy,
     enum power_supply_property psp,
     const union power_supply_propval *val)
{
 struct axp20x_ac_power *power = power_supply_get_drvdata(psy);

 switch (psp) {
 case 128:
  if (val->intval < 4000000 || val->intval > 4700000)
   return -EINVAL;

  return regmap_update_bits(power->regmap, AXP813_ACIN_PATH_CTRL,
       AXP813_VHOLD_MASK,
       AXP813_VHOLD_UV_TO_BIT(val->intval));

 case 129:
  if (val->intval < 1500000 || val->intval > 4000000)
   return -EINVAL;

  return regmap_update_bits(power->regmap, AXP813_ACIN_PATH_CTRL,
       AXP813_CURR_LIMIT_MASK,
       AXP813_CURR_LIMIT_UA_TO_BIT(val->intval));

 default:
  return -EINVAL;
 }

 return -EINVAL;
}
