
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct fan53555_device_info {unsigned int mode_mask; int mode_reg; } ;


 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_NORMAL ;
 struct fan53555_device_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int fan53555_get_mode(struct regulator_dev *rdev)
{
 struct fan53555_device_info *di = rdev_get_drvdata(rdev);
 unsigned int val;
 int ret = 0;

 ret = regmap_read(rdev->regmap, di->mode_reg, &val);
 if (ret < 0)
  return ret;
 if (val & di->mode_mask)
  return REGULATOR_MODE_FAST;
 else
  return REGULATOR_MODE_NORMAL;
}
