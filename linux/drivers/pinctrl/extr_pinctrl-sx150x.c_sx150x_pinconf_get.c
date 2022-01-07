
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
struct TYPE_4__ {int reg_drain; int reg_clock; } ;
struct TYPE_5__ {TYPE_1__ x789; } ;
struct TYPE_6__ {TYPE_2__ pri; int model; int reg_pullup; int reg_pulldn; } ;


 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 int ENOTSUPP ;





 int SX150X_789 ;
 unsigned long pinconf_to_config_packed (unsigned int,int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct sx150x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sx150x_gpio_get (int *,unsigned int) ;
 int sx150x_gpio_get_direction (int *,unsigned int) ;
 scalar_t__ sx150x_pin_is_oscio (struct sx150x_pinctrl*,unsigned int) ;

__attribute__((used)) static int sx150x_pinconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *config)
{
 struct sx150x_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 unsigned int param = pinconf_to_config_param(*config);
 int ret;
 u32 arg;
 unsigned int data;

 if (sx150x_pin_is_oscio(pctl, pin)) {
  switch (param) {
  case 129:
  case 128:
   ret = regmap_read(pctl->regmap,
       pctl->data->pri.x789.reg_clock,
       &data);
   if (ret < 0)
    return ret;

   if (param == 129)
    arg = (data & 0x1f) ? 1 : 0;
   else {
    if ((data & 0x1f) == 0x1f)
     arg = 1;
    else if ((data & 0x1f) == 0x10)
     arg = 0;
    else
     return -EINVAL;
   }

   break;
  default:
   return -ENOTSUPP;
  }

  goto out;
 }

 switch (param) {
 case 132:
  ret = regmap_read(pctl->regmap,
      pctl->data->reg_pulldn,
      &data);
  data &= BIT(pin);

  if (ret < 0)
   return ret;

  if (!ret)
   return -EINVAL;

  arg = 1;
  break;

 case 131:
  ret = regmap_read(pctl->regmap,
      pctl->data->reg_pullup,
      &data);
  data &= BIT(pin);

  if (ret < 0)
   return ret;

  if (!ret)
   return -EINVAL;

  arg = 1;
  break;

 case 130:
  if (pctl->data->model != SX150X_789)
   return -ENOTSUPP;

  ret = regmap_read(pctl->regmap,
      pctl->data->pri.x789.reg_drain,
      &data);
  data &= BIT(pin);

  if (ret < 0)
   return ret;

  if (!data)
   return -EINVAL;

  arg = 1;
  break;

 case 129:
  if (pctl->data->model != SX150X_789)
   arg = 1;
  else {
   ret = regmap_read(pctl->regmap,
       pctl->data->pri.x789.reg_drain,
       &data);
   data &= BIT(pin);

   if (ret < 0)
    return ret;

   if (data)
    return -EINVAL;

   arg = 1;
  }
  break;

 case 128:
  ret = sx150x_gpio_get_direction(&pctl->gpio, pin);
  if (ret < 0)
   return ret;

  if (ret)
   return -EINVAL;

  ret = sx150x_gpio_get(&pctl->gpio, pin);
  if (ret < 0)
   return ret;

  arg = ret;
  break;

 default:
  return -ENOTSUPP;
 }

out:
 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
