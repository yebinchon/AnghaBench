
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwm_device {int hwpwm; int label; } ;
struct pwm_chip {int dev; } ;


 int DIV_ROUND_UP (int,int) ;
 int TWL4030_LED_MAX ;
 int TWL4030_MODULE_LED ;
 int TWL4030_PWMA_REG ;
 int dev_err (int ,char*,int ) ;
 int twl_i2c_write (int ,int*,int,int) ;

__attribute__((used)) static int twl4030_pwmled_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 int duty_cycle = DIV_ROUND_UP(duty_ns * TWL4030_LED_MAX, period_ns) + 1;
 u8 pwm_config[2] = { 1, 0 };
 int base, ret;
 if (duty_cycle == 1)
  duty_cycle = 2;
 else if (duty_cycle > TWL4030_LED_MAX)
  duty_cycle = 1;

 base = pwm->hwpwm * 2 + TWL4030_PWMA_REG;

 pwm_config[1] = duty_cycle;

 ret = twl_i2c_write(TWL4030_MODULE_LED, pwm_config, base, 2);
 if (ret < 0)
  dev_err(chip->dev, "%s: Failed to configure PWM\n", pwm->label);

 return ret;
}
