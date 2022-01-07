
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct mt6380_regulator_info {unsigned int modeset_mask; int modeset_reg; } ;


 unsigned int EINVAL ;


 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 int ffs (unsigned int) ;
 struct mt6380_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int mt6380_regulator_get_mode(struct regulator_dev *rdev)
{
 unsigned int val;
 unsigned int mode;
 int ret;
 struct mt6380_regulator_info *info = rdev_get_drvdata(rdev);

 ret = regmap_read(rdev->regmap, info->modeset_reg, &val);
 if (ret < 0)
  return ret;

 val &= info->modeset_mask;
 val >>= ffs(info->modeset_mask) - 1;

 switch (val) {
 case 129:
  mode = REGULATOR_MODE_NORMAL;
  break;
 case 128:
  mode = REGULATOR_MODE_FAST;
  break;
 default:
  return -EINVAL;
 }

 return mode;
}
