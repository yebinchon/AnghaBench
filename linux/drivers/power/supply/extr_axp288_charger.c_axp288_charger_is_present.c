
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_chrg_info {int regmap; } ;


 int AXP20X_PWR_INPUT_STATUS ;
 unsigned int PS_STAT_VBUS_PRESENT ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int axp288_charger_is_present(struct axp288_chrg_info *info)
{
 int ret, present = 0;
 unsigned int val;

 ret = regmap_read(info->regmap, AXP20X_PWR_INPUT_STATUS, &val);
 if (ret < 0)
  return ret;

 if (val & PS_STAT_VBUS_PRESENT)
  present = 1;
 return present;
}
