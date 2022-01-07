
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct mt6380_regulator_info {int modeset_mask; int modeset_reg; } ;


 int EINVAL ;
 int MT6380_REGULATOR_MODE_AUTO ;
 int MT6380_REGULATOR_MODE_FORCE_PWM ;


 int ffs (int ) ;
 struct mt6380_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mt6380_regulator_set_mode(struct regulator_dev *rdev,
         unsigned int mode)
{
 int ret, val = 0;
 struct mt6380_regulator_info *info = rdev_get_drvdata(rdev);

 switch (mode) {
 case 128:
  val = MT6380_REGULATOR_MODE_AUTO;
  break;
 case 129:
  val = MT6380_REGULATOR_MODE_FORCE_PWM;
  break;
 default:
  return -EINVAL;
 }

 val <<= ffs(info->modeset_mask) - 1;

 ret = regmap_update_bits(rdev->regmap, info->modeset_reg,
     info->modeset_mask, val);

 return ret;
}
