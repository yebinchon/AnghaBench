
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dev; } ;
struct bcm281xx_pinctrl_data {TYPE_1__* pins; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int name; } ;


 int ARRAY_SIZE (int*) ;
 int BCM281XX_PIN_MASK (int ,int ) ;
 int BCM281XX_PIN_SHIFT (int ,int ) ;
 int EINVAL ;
 int I2C ;
 int INPUT_DIS ;




 int PULL_UP_STR ;
 int SLEW ;
 int bcm281xx_pin_update (int*,int*,int,int ,int ) ;
 int* bcm281xx_pullup_map ;
 int dev_err (int ,char*,int,int ,unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct bcm281xx_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bcm281xx_i2c_pin_update(struct pinctrl_dev *pctldev,
       unsigned pin,
       unsigned long *configs,
       unsigned num_configs,
       u32 *val,
       u32 *mask)
{
 struct bcm281xx_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);
 int i, j;
 enum pin_config_param param;
 u32 arg;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 130:
   for (j = 0; j < ARRAY_SIZE(bcm281xx_pullup_map); j++)
    if (bcm281xx_pullup_map[j] == arg)
     break;

   if (j == ARRAY_SIZE(bcm281xx_pullup_map)) {
    dev_err(pctldev->dev,
     "Invalid pull-up value (%d) for pin %s "
     "(%d). Valid values are 568, 720, 831, "
     "1080, 1200, 1800, 2700 Ohms.\n",
     arg, pdata->pins[pin].name, pin);
    return -EINVAL;
   }

   bcm281xx_pin_update(val, mask, j+1,
    BCM281XX_PIN_SHIFT(I2C, PULL_UP_STR),
    BCM281XX_PIN_MASK(I2C, PULL_UP_STR));
   break;

  case 131:
   bcm281xx_pin_update(val, mask, 0,
    BCM281XX_PIN_SHIFT(I2C, PULL_UP_STR),
    BCM281XX_PIN_MASK(I2C, PULL_UP_STR));
   break;

  case 128:
   arg = (arg >= 1 ? 1 : 0);
   bcm281xx_pin_update(val, mask, arg,
    BCM281XX_PIN_SHIFT(I2C, SLEW),
    BCM281XX_PIN_MASK(I2C, SLEW));
   break;

  case 129:

   arg = (arg >= 1 ? 0 : 1);
   bcm281xx_pin_update(val, mask, arg,
    BCM281XX_PIN_SHIFT(I2C, INPUT_DIS),
    BCM281XX_PIN_MASK(I2C, INPUT_DIS));
   break;

  default:
   dev_err(pctldev->dev,
    "Unrecognized pin config %d for pin %s (%d).\n",
    param, pdata->pins[pin].name, pin);
   return -EINVAL;

  }
 }

 return 0;
}
