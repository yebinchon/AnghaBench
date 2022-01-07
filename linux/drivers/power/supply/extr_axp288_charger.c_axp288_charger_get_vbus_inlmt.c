
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_chrg_info {int regmap; } ;


 int AXP20X_CHRG_BAK_CTRL ;
 unsigned int CHRG_VBUS_ILIM_BIT_POS ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int axp288_charger_get_vbus_inlmt(struct axp288_chrg_info *info)
{
 unsigned int val;
 int ret;

 ret = regmap_read(info->regmap, AXP20X_CHRG_BAK_CTRL, &val);
 if (ret < 0)
  return ret;

 val >>= CHRG_VBUS_ILIM_BIT_POS;
 switch (val) {
 case 135:
  return 100000;
 case 129:
  return 500000;
 case 128:
  return 900000;
 case 134:
  return 1500000;
 case 133:
  return 2000000;
 case 132:
  return 2500000;
 case 131:
  return 3000000;
 case 130:
  return 3500000;
 default:

  return 4000000;
 }
}
