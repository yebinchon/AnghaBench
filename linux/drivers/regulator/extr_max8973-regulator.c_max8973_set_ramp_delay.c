
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int dev; int regmap; } ;


 int EINVAL ;
 int MAX8973_CONTROL1 ;
 unsigned int MAX8973_RAMP_12mV_PER_US ;
 unsigned int MAX8973_RAMP_200mV_PER_US ;
 unsigned int MAX8973_RAMP_25mV_PER_US ;
 unsigned int MAX8973_RAMP_50mV_PER_US ;
 int MAX8973_RAMP_MASK ;
 int dev_err (int ,char*,int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int max8973_set_ramp_delay(struct regulator_dev *rdev,
  int ramp_delay)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 unsigned int control;
 int ret;


 if (ramp_delay <= 12000)
  control = MAX8973_RAMP_12mV_PER_US;
 else if (ramp_delay <= 25000)
  control = MAX8973_RAMP_25mV_PER_US;
 else if (ramp_delay <= 50000)
  control = MAX8973_RAMP_50mV_PER_US;
 else if (ramp_delay <= 200000)
  control = MAX8973_RAMP_200mV_PER_US;
 else
  return -EINVAL;

 ret = regmap_update_bits(max->regmap, MAX8973_CONTROL1,
   MAX8973_RAMP_MASK, control);
 if (ret < 0)
  dev_err(max->dev, "register %d update failed, %d",
    MAX8973_CONTROL1, ret);
 return ret;
}
