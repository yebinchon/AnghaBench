
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dev; int regmap; } ;
struct mt6397_regulator_info {int modeset_shift; int modeset_mask; int modeset_reg; } ;


 int EINVAL ;
 int MT6397_BUCK_MODE_AUTO ;
 int MT6397_BUCK_MODE_FORCE_PWM ;


 int dev_dbg (int *,char*,int ,int ,int,int) ;
 int dev_err (int *,char*,int) ;
 struct mt6397_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6397_regulator_set_mode(struct regulator_dev *rdev,
         unsigned int mode)
{
 struct mt6397_regulator_info *info = rdev_get_drvdata(rdev);
 int ret, val;

 switch (mode) {
 case 129:
  val = MT6397_BUCK_MODE_FORCE_PWM;
  break;
 case 128:
  val = MT6397_BUCK_MODE_AUTO;
  break;
 default:
  ret = -EINVAL;
  goto err_mode;
 }

 dev_dbg(&rdev->dev, "mt6397 buck set_mode %#x, %#x, %#x, %#x\n",
  info->modeset_reg, info->modeset_mask,
  info->modeset_shift, val);

 val <<= info->modeset_shift;
 ret = regmap_update_bits(rdev->regmap, info->modeset_reg,
     info->modeset_mask, val);
err_mode:
 if (ret != 0) {
  dev_err(&rdev->dev,
   "Failed to set mt6397 buck mode: %d\n", ret);
  return ret;
 }

 return 0;
}
