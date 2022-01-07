
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_chip {int dev; int i2c; } ;
struct max8925_backlight_data {int current_brightness; int reg_cntl; struct max8925_chip* chip; } ;
struct backlight_device {int dummy; } ;


 int EINVAL ;
 struct max8925_backlight_data* bl_get_data (struct backlight_device*) ;
 int dev_dbg (int ,char*,int) ;
 int max8925_reg_read (int ,int ) ;

__attribute__((used)) static int max8925_backlight_get_brightness(struct backlight_device *bl)
{
 struct max8925_backlight_data *data = bl_get_data(bl);
 struct max8925_chip *chip = data->chip;
 int ret;

 ret = max8925_reg_read(chip->i2c, data->reg_cntl);
 if (ret < 0)
  return -EINVAL;
 data->current_brightness = ret;
 dev_dbg(chip->dev, "get brightness %d\n", data->current_brightness);
 return ret;
}
