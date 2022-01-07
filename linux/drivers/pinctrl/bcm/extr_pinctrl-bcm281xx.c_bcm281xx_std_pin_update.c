
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


 int BCM281XX_PIN_MASK (int ,int ) ;
 int BCM281XX_PIN_SHIFT (int ,int ) ;
 int DRV_STR ;
 int EINVAL ;
 int HYST ;
 int INPUT_DIS ;







 int PULL_DN ;
 int PULL_UP ;
 int SLEW ;
 int STD ;
 int bcm281xx_pin_update (int*,int*,int,int ,int ) ;
 int dev_err (int ,char*,int,int ,unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct bcm281xx_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bcm281xx_std_pin_update(struct pinctrl_dev *pctldev,
       unsigned pin,
       unsigned long *configs,
       unsigned num_configs,
       u32 *val,
       u32 *mask)
{
 struct bcm281xx_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);
 int i;
 enum pin_config_param param;
 u32 arg;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 129:
   arg = (arg >= 1 ? 1 : 0);
   bcm281xx_pin_update(val, mask, arg,
    BCM281XX_PIN_SHIFT(STD, HYST),
    BCM281XX_PIN_MASK(STD, HYST));
   break;






  case 134:
   bcm281xx_pin_update(val, mask, 0,
    BCM281XX_PIN_SHIFT(STD, PULL_UP),
    BCM281XX_PIN_MASK(STD, PULL_UP));
   bcm281xx_pin_update(val, mask, 0,
    BCM281XX_PIN_SHIFT(STD, PULL_DN),
    BCM281XX_PIN_MASK(STD, PULL_DN));
   break;

  case 132:
   bcm281xx_pin_update(val, mask, 1,
    BCM281XX_PIN_SHIFT(STD, PULL_UP),
    BCM281XX_PIN_MASK(STD, PULL_UP));
   bcm281xx_pin_update(val, mask, 0,
    BCM281XX_PIN_SHIFT(STD, PULL_DN),
    BCM281XX_PIN_MASK(STD, PULL_DN));
   break;

  case 133:
   bcm281xx_pin_update(val, mask, 0,
    BCM281XX_PIN_SHIFT(STD, PULL_UP),
    BCM281XX_PIN_MASK(STD, PULL_UP));
   bcm281xx_pin_update(val, mask, 1,
    BCM281XX_PIN_SHIFT(STD, PULL_DN),
    BCM281XX_PIN_MASK(STD, PULL_DN));
   break;

  case 128:
   arg = (arg >= 1 ? 1 : 0);
   bcm281xx_pin_update(val, mask, arg,
    BCM281XX_PIN_SHIFT(STD, SLEW),
    BCM281XX_PIN_MASK(STD, SLEW));
   break;

  case 130:

   arg = (arg >= 1 ? 0 : 1);
   bcm281xx_pin_update(val, mask, arg,
    BCM281XX_PIN_SHIFT(STD, INPUT_DIS),
    BCM281XX_PIN_MASK(STD, INPUT_DIS));
   break;

  case 131:

   if ((arg < 2) || (arg > 16) || (arg % 2)) {
    dev_err(pctldev->dev,
     "Invalid Drive Strength value (%d) for "
     "pin %s (%d). Valid values are "
     "(2..16) mA, even numbers only.\n",
     arg, pdata->pins[pin].name, pin);
    return -EINVAL;
   }
   bcm281xx_pin_update(val, mask, (arg/2)-1,
    BCM281XX_PIN_SHIFT(STD, DRV_STR),
    BCM281XX_PIN_MASK(STD, DRV_STR));
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
