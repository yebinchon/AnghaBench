
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dev; TYPE_1__* desc; int regmap; } ;
struct TYPE_2__ {int vsel_reg; } ;


 int AUTO_PWM_MODE ;
 int EINVAL ;
 int FPWM_MODE ;
 int PWM_MODE_MSK ;


 int dev_err (int *,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int rk8xx_set_mode(struct regulator_dev *rdev, unsigned int mode)
{
 switch (mode) {
 case 129:
  return regmap_update_bits(rdev->regmap, rdev->desc->vsel_reg,
       PWM_MODE_MSK, FPWM_MODE);
 case 128:
  return regmap_update_bits(rdev->regmap, rdev->desc->vsel_reg,
       PWM_MODE_MSK, AUTO_PWM_MODE);
 default:
  dev_err(&rdev->dev, "do not support this mode\n");
  return -EINVAL;
 }

 return 0;
}
