
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_batt_ps {int regmap; } ;


 int AXP20X_V_OFF ;
 int AXP20X_V_OFF_MASK ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int axp20x_set_voltage_min_design(struct axp20x_batt_ps *axp_batt,
      int min_voltage)
{
 int val1 = (min_voltage - 2600000) / 100000;

 if (val1 < 0 || val1 > AXP20X_V_OFF_MASK)
  return -EINVAL;

 return regmap_update_bits(axp_batt->regmap, AXP20X_V_OFF,
      AXP20X_V_OFF_MASK, val1);
}
