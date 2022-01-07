
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dev; int regmap; TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int vsel_reg; } ;


 int AUTO_PWM_MODE ;
 int EINVAL ;
 int FPWM_MODE ;
 int PWM_MODE_MSK ;


 unsigned int RK808_SLP_REG_OFFSET ;
 int dev_err (int *,char*) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int rk8xx_set_suspend_mode(struct regulator_dev *rdev, unsigned int mode)
{
 unsigned int reg;

 reg = rdev->desc->vsel_reg + RK808_SLP_REG_OFFSET;

 switch (mode) {
 case 129:
  return regmap_update_bits(rdev->regmap, reg,
       PWM_MODE_MSK, FPWM_MODE);
 case 128:
  return regmap_update_bits(rdev->regmap, reg,
       PWM_MODE_MSK, AUTO_PWM_MODE);
 default:
  dev_err(&rdev->dev, "do not support this mode\n");
  return -EINVAL;
 }

 return 0;
}
