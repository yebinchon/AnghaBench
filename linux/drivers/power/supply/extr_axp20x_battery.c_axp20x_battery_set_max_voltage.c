
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_batt_ps {int regmap; } ;


 int AXP20X_CHRG_CTRL1 ;
 int AXP20X_CHRG_CTRL1_TGT_4_15V ;
 int AXP20X_CHRG_CTRL1_TGT_4_1V ;
 int AXP20X_CHRG_CTRL1_TGT_4_2V ;
 int AXP20X_CHRG_CTRL1_TGT_VOLT ;
 int EINVAL ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int axp20x_battery_set_max_voltage(struct axp20x_batt_ps *axp20x_batt,
       int val)
{
 switch (val) {
 case 4100000:
  val = AXP20X_CHRG_CTRL1_TGT_4_1V;
  break;

 case 4150000:
  val = AXP20X_CHRG_CTRL1_TGT_4_15V;
  break;

 case 4200000:
  val = AXP20X_CHRG_CTRL1_TGT_4_2V;
  break;

 default:






  return -EINVAL;
 }

 return regmap_update_bits(axp20x_batt->regmap, AXP20X_CHRG_CTRL1,
      AXP20X_CHRG_CTRL1_TGT_VOLT, val);
}
