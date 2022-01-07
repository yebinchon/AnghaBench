
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pwm_device {int label; } ;
struct pwm_chip {int dev; } ;


 int TWL6030_LED_MAX ;
 int TWL6030_LED_PWM_CTRL1 ;
 int TWL6030_MODULE_ID1 ;
 int dev_err (int ,char*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl6030_pwmled_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 int duty_cycle = (duty_ns * TWL6030_LED_MAX) / period_ns;
 u8 on_time;
 int ret;

 on_time = duty_cycle & 0xff;

 ret = twl_i2c_write_u8(TWL6030_MODULE_ID1, on_time,
          TWL6030_LED_PWM_CTRL1);
 if (ret < 0)
  dev_err(chip->dev, "%s: Failed to configure PWM\n", pwm->label);

 return ret;
}
