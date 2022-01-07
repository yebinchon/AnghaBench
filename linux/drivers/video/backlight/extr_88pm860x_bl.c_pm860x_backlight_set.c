
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int dev; } ;
struct pm860x_backlight_data {unsigned char current_brightness; int port; int reg_always_on; int i2c; scalar_t__ pwm; scalar_t__ iset; int reg_current; int reg_duty_cycle; struct pm860x_chip* chip; } ;
struct backlight_device {int dummy; } ;


 scalar_t__ CURRENT_BITMASK ;
 int MAX_BRIGHTNESS ;
 int PM8606_PWM ;
 scalar_t__ PM8606_PWM_FREQ_MASK ;
 scalar_t__ PM8606_WLED_ON ;
 int backlight_power_set (struct pm860x_chip*,int ,int) ;
 struct pm860x_backlight_data* bl_get_data (struct backlight_device*) ;
 int dev_dbg (int ,char*,unsigned char,...) ;
 int pm860x_reg_write (int ,int ,unsigned char) ;
 int pm860x_set_bits (int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int pm860x_backlight_set(struct backlight_device *bl, int brightness)
{
 struct pm860x_backlight_data *data = bl_get_data(bl);
 struct pm860x_chip *chip = data->chip;
 unsigned char value;
 int ret;

 if (brightness > MAX_BRIGHTNESS)
  value = MAX_BRIGHTNESS;
 else
  value = brightness;

 if (brightness)
  backlight_power_set(chip, data->port, 1);

 ret = pm860x_reg_write(data->i2c, data->reg_duty_cycle, value);
 if (ret < 0)
  goto out;

 if ((data->current_brightness == 0) && brightness) {
  if (data->iset) {
   ret = pm860x_set_bits(data->i2c, data->reg_current,
           CURRENT_BITMASK, data->iset);
   if (ret < 0)
    goto out;
  }
  if (data->pwm) {
   ret = pm860x_set_bits(data->i2c, PM8606_PWM,
           PM8606_PWM_FREQ_MASK, data->pwm);
   if (ret < 0)
    goto out;
  }
  if (brightness == MAX_BRIGHTNESS) {

   ret = pm860x_set_bits(data->i2c, data->reg_always_on,
           PM8606_WLED_ON, PM8606_WLED_ON);
  }
 } else {
  if (brightness == MAX_BRIGHTNESS) {

   ret = pm860x_set_bits(data->i2c, data->reg_always_on,
           PM8606_WLED_ON, PM8606_WLED_ON);
  } else {

   ret = pm860x_set_bits(data->i2c, data->reg_always_on,
           PM8606_WLED_ON, 0);
  }
 }
 if (ret < 0)
  goto out;

 if (brightness == 0)
  backlight_power_set(chip, data->port, 0);

 dev_dbg(chip->dev, "set brightness %d\n", value);
 data->current_brightness = value;
 return 0;
out:
 dev_dbg(chip->dev, "set brightness %d failure with return value: %d\n",
  value, ret);
 return ret;
}
