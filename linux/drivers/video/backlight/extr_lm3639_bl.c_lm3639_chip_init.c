
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm3639_platform_data {unsigned int pin_pwm; int pin_strobe; int pin_tx; unsigned int fled_pins; unsigned int bled_pins; int init_brt_led; } ;
struct lm3639_chip_data {int dev; int regmap; struct lm3639_platform_data* pdata; } ;


 int REG_BL_CONF_1 ;
 int REG_BL_CONF_3 ;
 int REG_BL_CONF_4 ;
 int REG_ENABLE ;
 int REG_IO_CTRL ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int lm3639_chip_init(struct lm3639_chip_data *pchip)
{
 int ret;
 unsigned int reg_val;
 struct lm3639_platform_data *pdata = pchip->pdata;


 ret =
     regmap_update_bits(pchip->regmap, REG_BL_CONF_1, 0x08,
          pdata->pin_pwm);
 if (ret < 0)
  goto out;

 reg_val = (pdata->pin_pwm & 0x40) | pdata->pin_strobe | pdata->pin_tx;
 ret = regmap_update_bits(pchip->regmap, REG_IO_CTRL, 0x7C, reg_val);
 if (ret < 0)
  goto out;


 ret = regmap_write(pchip->regmap, REG_BL_CONF_4, pdata->init_brt_led);
 if (ret < 0)
  goto out;

 ret = regmap_write(pchip->regmap, REG_BL_CONF_3, pdata->init_brt_led);
 if (ret < 0)
  goto out;


 if (!pdata->init_brt_led) {
  reg_val = pdata->fled_pins;
  reg_val |= pdata->bled_pins;
 } else {
  reg_val = pdata->fled_pins;
  reg_val |= pdata->bled_pins | 0x01;
 }

 ret = regmap_update_bits(pchip->regmap, REG_ENABLE, 0x79, reg_val);
 if (ret < 0)
  goto out;

 return ret;
out:
 dev_err(pchip->dev, "i2c failed to access register\n");
 return ret;
}
