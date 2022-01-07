
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int dev; } ;
struct pm860x_backlight_data {int current_brightness; int reg_duty_cycle; int i2c; struct pm860x_chip* chip; } ;
struct backlight_device {int dummy; } ;


 int EINVAL ;
 struct pm860x_backlight_data* bl_get_data (struct backlight_device*) ;
 int dev_dbg (int ,char*,int) ;
 int pm860x_reg_read (int ,int ) ;

__attribute__((used)) static int pm860x_backlight_get_brightness(struct backlight_device *bl)
{
 struct pm860x_backlight_data *data = bl_get_data(bl);
 struct pm860x_chip *chip = data->chip;
 int ret;

 ret = pm860x_reg_read(data->i2c, data->reg_duty_cycle);
 if (ret < 0)
  goto out;
 data->current_brightness = ret;
 dev_dbg(chip->dev, "get brightness %d\n", data->current_brightness);
 return data->current_brightness;
out:
 return -EINVAL;
}
