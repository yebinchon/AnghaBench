
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl_pwm_chip {int mutex; } ;
struct pwm_device {int label; int hwpwm; } ;
struct pwm_chip {int dev; } ;


 int TWL4030_GPBR1_REG ;
 int TWL4030_MODULE_INTBR ;
 int TWL4030_PWMXCLK_ENABLE ;
 int TWL4030_PWMX_ENABLE ;
 int TWL4030_PWM_TOGGLE (int ,int ) ;
 int dev_err (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct twl_pwm_chip* to_twl (struct pwm_chip*) ;
 int twl_i2c_read_u8 (int ,int *,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct twl_pwm_chip *twl = to_twl(chip);
 int ret;
 u8 val;

 mutex_lock(&twl->mutex);
 ret = twl_i2c_read_u8(TWL4030_MODULE_INTBR, &val, TWL4030_GPBR1_REG);
 if (ret < 0) {
  dev_err(chip->dev, "%s: Failed to read GPBR1\n", pwm->label);
  goto out;
 }

 val |= TWL4030_PWM_TOGGLE(pwm->hwpwm, TWL4030_PWMXCLK_ENABLE);

 ret = twl_i2c_write_u8(TWL4030_MODULE_INTBR, val, TWL4030_GPBR1_REG);
 if (ret < 0)
  dev_err(chip->dev, "%s: Failed to enable PWM\n", pwm->label);

 val |= TWL4030_PWM_TOGGLE(pwm->hwpwm, TWL4030_PWMX_ENABLE);

 ret = twl_i2c_write_u8(TWL4030_MODULE_INTBR, val, TWL4030_GPBR1_REG);
 if (ret < 0)
  dev_err(chip->dev, "%s: Failed to enable PWM\n", pwm->label);

out:
 mutex_unlock(&twl->mutex);
 return ret;
}
