
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8973_chip {int dev; int regmap; } ;


 int EINVAL ;
 int MAX8973_CONTROL1 ;
 int MAX8973_FPWM_EN_M ;


 int dev_err (int ,char*,int ,int) ;
 struct max8973_chip* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int max8973_dcdc_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 struct max8973_chip *max = rdev_get_drvdata(rdev);
 int ret;
 int pwm;


 switch (mode) {
 case 129:
  pwm = MAX8973_FPWM_EN_M;
  break;

 case 128:
  pwm = 0;
  break;

 default:
  return -EINVAL;
 }

 ret = regmap_update_bits(max->regmap, MAX8973_CONTROL1,
    MAX8973_FPWM_EN_M, pwm);
 if (ret < 0)
  dev_err(max->dev, "register %d update failed, err %d\n",
    MAX8973_CONTROL1, ret);
 return ret;
}
