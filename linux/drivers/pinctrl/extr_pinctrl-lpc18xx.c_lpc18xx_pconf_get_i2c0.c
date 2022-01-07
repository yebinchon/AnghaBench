
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;
 int LPC18XX_SCU_I2C0_EFP ;
 int LPC18XX_SCU_I2C0_EHD ;
 int LPC18XX_SCU_I2C0_EZI ;
 int LPC18XX_SCU_I2C0_SCL_SHIFT ;
 int LPC18XX_SCU_I2C0_SDA_SHIFT ;
 int LPC18XX_SCU_I2C0_ZIF ;




 unsigned int PIN_I2C0_SCL ;

__attribute__((used)) static int lpc18xx_pconf_get_i2c0(enum pin_config_param param, int *arg, u32 reg,
      unsigned pin)
{
 u8 shift;

 if (pin == PIN_I2C0_SCL)
  shift = LPC18XX_SCU_I2C0_SCL_SHIFT;
 else
  shift = LPC18XX_SCU_I2C0_SDA_SHIFT;

 switch (param) {
 case 131:
  if (reg & (LPC18XX_SCU_I2C0_EZI << shift))
   *arg = 1;
  else
   return -EINVAL;
  break;

 case 128:
  if (reg & (LPC18XX_SCU_I2C0_EHD << shift))
   *arg = 1;
  else
   *arg = 0;
  break;

 case 130:
  if (reg & (LPC18XX_SCU_I2C0_EFP << shift))
   *arg = 3;
  else
   *arg = 50;
  break;

 case 129:
  if (reg & (LPC18XX_SCU_I2C0_ZIF << shift))
   return -EINVAL;
  else
   *arg = 1;
  break;

 default:
  return -ENOTSUPP;
 }

 return 0;
}
