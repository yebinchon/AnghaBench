
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dev; int regmap; } ;
struct mt6358_regulator_info {int modeset_mask; int modeset_shift; int modeset_reg; } ;


 unsigned int EINVAL ;


 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int dev_err (int *,char*,int) ;
 struct mt6358_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static unsigned int mt6358_regulator_get_mode(struct regulator_dev *rdev)
{
 struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
 int ret, regval;

 ret = regmap_read(rdev->regmap, info->modeset_reg, &regval);
 if (ret != 0) {
  dev_err(&rdev->dev,
   "Failed to get mt6358 buck mode: %d\n", ret);
  return ret;
 }

 switch ((regval & info->modeset_mask) >> info->modeset_shift) {
 case 129:
  return REGULATOR_MODE_NORMAL;
 case 128:
  return REGULATOR_MODE_FAST;
 default:
  return -EINVAL;
 }
}
