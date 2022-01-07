
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sx150x_pinctrl {int gpio; TYPE_3__* data; int regmap; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_4__ {int reg_drain; } ;
struct TYPE_5__ {TYPE_1__ x789; } ;
struct TYPE_6__ {TYPE_2__ pri; int model; int reg_pulldn; int reg_pullup; } ;


 int BIT (unsigned int) ;
 int ENOTSUPP ;







 int SX150X_789 ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct sx150x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int sx150x_gpio_direction_output (int *,unsigned int,int ) ;
 scalar_t__ sx150x_pin_is_oscio (struct sx150x_pinctrl*,unsigned int) ;

__attribute__((used)) static int sx150x_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *configs, unsigned int num_configs)
{
 struct sx150x_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 u32 arg;
 int i;
 int ret;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  if (sx150x_pin_is_oscio(pctl, pin)) {
   if (param == 128) {
    ret = sx150x_gpio_direction_output(&pctl->gpio,
           pin, arg);
    if (ret < 0)
     return ret;

    continue;
   } else
    return -ENOTSUPP;
  }

  switch (param) {
  case 132:
  case 134:
   ret = regmap_write_bits(pctl->regmap,
      pctl->data->reg_pulldn,
      BIT(pin), 0);
   if (ret < 0)
    return ret;

   ret = regmap_write_bits(pctl->regmap,
      pctl->data->reg_pullup,
      BIT(pin), 0);
   if (ret < 0)
    return ret;

   break;

  case 131:
   ret = regmap_write_bits(pctl->regmap,
      pctl->data->reg_pullup,
      BIT(pin), BIT(pin));
   if (ret < 0)
    return ret;

   break;

  case 133:
   ret = regmap_write_bits(pctl->regmap,
      pctl->data->reg_pulldn,
      BIT(pin), BIT(pin));
   if (ret < 0)
    return ret;

   break;

  case 130:
   if (pctl->data->model != SX150X_789 ||
       sx150x_pin_is_oscio(pctl, pin))
    return -ENOTSUPP;

   ret = regmap_write_bits(pctl->regmap,
      pctl->data->pri.x789.reg_drain,
      BIT(pin), BIT(pin));
   if (ret < 0)
    return ret;

   break;

  case 129:
   if (pctl->data->model != SX150X_789 ||
       sx150x_pin_is_oscio(pctl, pin))
    return 0;

   ret = regmap_write_bits(pctl->regmap,
      pctl->data->pri.x789.reg_drain,
      BIT(pin), 0);
   if (ret < 0)
    return ret;

   break;

  case 128:
   ret = sx150x_gpio_direction_output(&pctl->gpio,
          pin, arg);
   if (ret < 0)
    return ret;

   break;

  default:
   return -ENOTSUPP;
  }
 }

 return 0;
}
