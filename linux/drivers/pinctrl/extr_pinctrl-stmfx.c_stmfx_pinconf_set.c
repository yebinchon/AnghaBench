
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmfx_pinctrl {int gpio_chip; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;







 int dev_err (int ,char*,unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct stmfx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin_nolock (struct pinctrl_dev*,unsigned int) ;
 int stmfx_gpio_direction_output (int *,unsigned int,int ) ;
 int stmfx_gpio_get_direction (int *,unsigned int) ;
 int stmfx_pinconf_set_pupd (struct stmfx_pinctrl*,unsigned int,int) ;
 int stmfx_pinconf_set_type (struct stmfx_pinctrl*,unsigned int,int) ;

__attribute__((used)) static int stmfx_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
        unsigned long *configs, unsigned int num_configs)
{
 struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct pinctrl_gpio_range *range;
 enum pin_config_param param;
 u32 arg;
 int dir, i, ret;

 range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
 if (!range) {
  dev_err(pctldev->dev, "pin %d is not available\n", pin);
  return -EINVAL;
 }

 dir = stmfx_gpio_get_direction(&pctl->gpio_chip, pin);
 if (dir < 0)
  return dir;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 132:
  case 134:
  case 129:
   ret = stmfx_pinconf_set_type(pctl, pin, 0);
   if (ret)
    return ret;
   break;
  case 133:
   ret = stmfx_pinconf_set_type(pctl, pin, 1);
   if (ret)
    return ret;
   ret = stmfx_pinconf_set_pupd(pctl, pin, 0);
   if (ret)
    return ret;
   break;
  case 131:
   ret = stmfx_pinconf_set_type(pctl, pin, 1);
   if (ret)
    return ret;
   ret = stmfx_pinconf_set_pupd(pctl, pin, 1);
   if (ret)
    return ret;
   break;
  case 130:
   ret = stmfx_pinconf_set_type(pctl, pin, 1);
   if (ret)
    return ret;
   break;
  case 128:
   ret = stmfx_gpio_direction_output(&pctl->gpio_chip,
         pin, arg);
   if (ret)
    return ret;
   break;
  default:
   return -ENOTSUPP;
  }
 }

 return 0;
}
