
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max77620_regulator_info {scalar_t__ type; int cfg_addr; } ;
struct max77620_regulator {int dev; int rmap; struct max77620_regulator_info** rinfo; } ;






 scalar_t__ MAX77620_REGULATOR_TYPE_SD ;
 unsigned int MAX77620_SD_FPWM_MASK ;
 int REGULATOR_MODE_FAST ;
 int REGULATOR_MODE_IDLE ;
 int REGULATOR_MODE_NORMAL ;
 int dev_err (int ,char*,int ,int) ;
 int max77620_regulator_get_power_mode (struct max77620_regulator*,int) ;
 struct max77620_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int max77620_regulator_get_mode(struct regulator_dev *rdev)
{
 struct max77620_regulator *pmic = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 int fpwm = 0;
 int ret;
 int pm_mode, reg_mode;
 unsigned int val;

 ret = max77620_regulator_get_power_mode(pmic, id);
 if (ret < 0)
  return 0;

 pm_mode = ret;

 if (rinfo->type == MAX77620_REGULATOR_TYPE_SD) {
  ret = regmap_read(pmic->rmap, rinfo->cfg_addr, &val);
  if (ret < 0) {
   dev_err(pmic->dev, "Reg 0x%02x read failed: %d\n",
    rinfo->cfg_addr, ret);
   return ret;
  }
  fpwm = !!(val & MAX77620_SD_FPWM_MASK);
 }

 switch (pm_mode) {
 case 128:
 case 131:
  if (fpwm)
   reg_mode = REGULATOR_MODE_FAST;
  else
   reg_mode = REGULATOR_MODE_NORMAL;
  break;
 case 129:
 case 130:
  reg_mode = REGULATOR_MODE_IDLE;
  break;
 default:
  return 0;
 }

 return reg_mode;
}
