
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; int dev; } ;
struct mt6358_regulator_info {int modeset_shift; int modeset_mask; int modeset_reg; } ;


 int EINVAL ;
 int MT6358_BUCK_MODE_AUTO ;
 int MT6358_BUCK_MODE_FORCE_PWM ;


 int dev_dbg (int *,char*,int ,int ,int,int) ;
 struct mt6358_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6358_regulator_set_mode(struct regulator_dev *rdev,
         unsigned int mode)
{
 struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
 int val;

 switch (mode) {
 case 129:
  val = MT6358_BUCK_MODE_FORCE_PWM;
  break;
 case 128:
  val = MT6358_BUCK_MODE_AUTO;
  break;
 default:
  return -EINVAL;
 }

 dev_dbg(&rdev->dev, "mt6358 buck set_mode %#x, %#x, %#x, %#x\n",
  info->modeset_reg, info->modeset_mask,
  info->modeset_shift, val);

 val <<= info->modeset_shift;

 return regmap_update_bits(rdev->regmap, info->modeset_reg,
      info->modeset_mask, val);
}
