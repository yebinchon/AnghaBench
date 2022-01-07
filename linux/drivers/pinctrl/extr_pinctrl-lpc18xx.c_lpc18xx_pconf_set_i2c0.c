
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pinctrl_dev {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;
 int LPC18XX_SCU_I2C0_EFP ;
 int LPC18XX_SCU_I2C0_EHD ;
 int LPC18XX_SCU_I2C0_EZI ;
 int LPC18XX_SCU_I2C0_SCL_SHIFT ;
 int LPC18XX_SCU_I2C0_SDA_SHIFT ;
 int LPC18XX_SCU_I2C0_ZIF ;




 unsigned int PIN_I2C0_SCL ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int lpc18xx_pconf_set_i2c0(struct pinctrl_dev *pctldev,
      enum pin_config_param param,
      u32 param_val, u32 *reg,
      unsigned pin)
{
 u8 shift;

 if (pin == PIN_I2C0_SCL)
  shift = LPC18XX_SCU_I2C0_SCL_SHIFT;
 else
  shift = LPC18XX_SCU_I2C0_SDA_SHIFT;

 switch (param) {
 case 131:
  if (param_val)
   *reg |= (LPC18XX_SCU_I2C0_EZI << shift);
  else
   *reg &= ~(LPC18XX_SCU_I2C0_EZI << shift);
  break;

 case 128:
  if (param_val)
   *reg |= (LPC18XX_SCU_I2C0_EHD << shift);
  else
   *reg &= ~(LPC18XX_SCU_I2C0_EHD << shift);
  break;

 case 130:
  if (param_val == 3)
   *reg |= (LPC18XX_SCU_I2C0_EFP << shift);
  else if (param_val == 50)
   *reg &= ~(LPC18XX_SCU_I2C0_EFP << shift);
  else
   return -ENOTSUPP;
  break;

 case 129:
  if (param_val)
   *reg &= ~(LPC18XX_SCU_I2C0_ZIF << shift);
  else
   *reg |= (LPC18XX_SCU_I2C0_ZIF << shift);
  break;

 default:
  dev_err(pctldev->dev, "Property not supported\n");
  return -ENOTSUPP;
 }

 return 0;
}
