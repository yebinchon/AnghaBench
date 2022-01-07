
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int label; } ;
struct pwm_chip {int base; int dev; } ;


 int AB8500_MISC ;
 int AB8500_PWM_OUT_CTRL7_REG ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int,int) ;
 int dev_err (int ,char*,int ,int) ;

__attribute__((used)) static int ab8500_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 int ret;

 ret = abx500_mask_and_set_register_interruptible(chip->dev,
    AB8500_MISC, AB8500_PWM_OUT_CTRL7_REG,
    1 << (chip->base - 1), 1 << (chip->base - 1));
 if (ret < 0)
  dev_err(chip->dev, "%s: Failed to enable PWM, Error %d\n",
       pwm->label, ret);
 return ret;
}
