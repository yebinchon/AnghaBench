
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_batt_ps {int regmap; } ;


 int AXP20X_CHRG_CTRL1 ;


 int AXP20X_CHRG_CTRL1_TGT_VOLT ;


 int EINVAL ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int axp22x_battery_get_max_voltage(struct axp20x_batt_ps *axp20x_batt,
       int *val)
{
 int ret, reg;

 ret = regmap_read(axp20x_batt->regmap, AXP20X_CHRG_CTRL1, &reg);
 if (ret)
  return ret;

 switch (reg & AXP20X_CHRG_CTRL1_TGT_VOLT) {
 case 131:
  *val = 4100000;
  break;
 case 130:
  *val = 4200000;
  break;
 case 129:
  *val = 4220000;
  break;
 case 128:
  *val = 4240000;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
