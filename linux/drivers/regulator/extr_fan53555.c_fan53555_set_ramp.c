
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;
struct fan53555_device_info {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int CTL_SLEW_MASK ;
 int CTL_SLEW_SHIFT ;
 int EINVAL ;
 int FAN53555_CONTROL ;
 int dev_err (int ,char*,int) ;
 struct fan53555_device_info* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 int* slew_rates ;

__attribute__((used)) static int fan53555_set_ramp(struct regulator_dev *rdev, int ramp)
{
 struct fan53555_device_info *di = rdev_get_drvdata(rdev);
 int regval = -1, i;

 for (i = 0; i < ARRAY_SIZE(slew_rates); i++) {
  if (ramp <= slew_rates[i])
   regval = i;
  else
   break;
 }

 if (regval < 0) {
  dev_err(di->dev, "unsupported ramp value %d\n", ramp);
  return -EINVAL;
 }

 return regmap_update_bits(rdev->regmap, FAN53555_CONTROL,
      CTL_SLEW_MASK, regval << CTL_SLEW_SHIFT);
}
