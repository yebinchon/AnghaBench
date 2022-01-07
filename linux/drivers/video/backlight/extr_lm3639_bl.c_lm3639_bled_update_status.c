
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3639_platform_data {int max_brt_led; int (* pwm_set_intensity ) (int,int ) ;scalar_t__ pin_pwm; } ;
struct lm3639_chip_data {int dev; int regmap; struct lm3639_platform_data* pdata; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int REG_BL_CONF_3 ;
 int REG_BL_CONF_4 ;
 int REG_ENABLE ;
 int REG_FLAG ;
 struct lm3639_chip_data* bl_get_data (struct backlight_device*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int stub1 (int,int ) ;

__attribute__((used)) static int lm3639_bled_update_status(struct backlight_device *bl)
{
 int ret;
 unsigned int reg_val;
 struct lm3639_chip_data *pchip = bl_get_data(bl);
 struct lm3639_platform_data *pdata = pchip->pdata;

 ret = regmap_read(pchip->regmap, REG_FLAG, &reg_val);
 if (ret < 0)
  goto out;

 if (reg_val != 0)
  dev_info(pchip->dev, "last flag is 0x%x\n", reg_val);


 if (pdata->pin_pwm) {
  if (pdata->pwm_set_intensity)
   pdata->pwm_set_intensity(bl->props.brightness,
       pdata->max_brt_led);
  else
   dev_err(pchip->dev,
    "No pwm control func. in plat-data\n");
  return bl->props.brightness;
 }


 ret = regmap_write(pchip->regmap, REG_BL_CONF_4, bl->props.brightness);
 if (ret < 0)
  goto out;
 ret = regmap_write(pchip->regmap, REG_BL_CONF_3, bl->props.brightness);
 if (ret < 0)
  goto out;

 if (!bl->props.brightness)
  ret = regmap_update_bits(pchip->regmap, REG_ENABLE, 0x01, 0x00);
 else
  ret = regmap_update_bits(pchip->regmap, REG_ENABLE, 0x01, 0x01);
 if (ret < 0)
  goto out;

 return bl->props.brightness;
out:
 dev_err(pchip->dev, "i2c failed to access registers\n");
 return bl->props.brightness;
}
