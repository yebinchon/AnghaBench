
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl_pwmled_chip {int mutex; } ;
struct pwm_device {int label; int hwpwm; } ;
struct pwm_chip {int dev; } ;


 int TWL4030_LEDEN_REG ;
 int TWL4030_LED_PINS ;
 int TWL4030_LED_TOGGLE (int ,int ) ;
 int TWL4030_MODULE_LED ;
 int dev_err (int ,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct twl_pwmled_chip* to_twl (struct pwm_chip*) ;
 int twl_i2c_read_u8 (int ,int *,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_pwmled_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct twl_pwmled_chip *twl = to_twl(chip);
 int ret;
 u8 val;

 mutex_lock(&twl->mutex);
 ret = twl_i2c_read_u8(TWL4030_MODULE_LED, &val, TWL4030_LEDEN_REG);
 if (ret < 0) {
  dev_err(chip->dev, "%s: Failed to read LEDEN\n", pwm->label);
  goto out;
 }

 val |= TWL4030_LED_TOGGLE(pwm->hwpwm, TWL4030_LED_PINS);

 ret = twl_i2c_write_u8(TWL4030_MODULE_LED, val, TWL4030_LEDEN_REG);
 if (ret < 0)
  dev_err(chip->dev, "%s: Failed to enable PWM\n", pwm->label);

out:
 mutex_unlock(&twl->mutex);
 return ret;
}
