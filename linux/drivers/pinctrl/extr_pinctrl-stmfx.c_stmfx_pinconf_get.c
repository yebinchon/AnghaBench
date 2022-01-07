
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmfx_pinctrl {int gpio_chip; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;






 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct stmfx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin_nolock (struct pinctrl_dev*,unsigned int) ;
 int stmfx_gpio_get (int *,unsigned int) ;
 int stmfx_gpio_get_direction (int *,unsigned int) ;
 int stmfx_pinconf_get_pupd (struct stmfx_pinctrl*,unsigned int) ;
 int stmfx_pinconf_get_type (struct stmfx_pinctrl*,unsigned int) ;

__attribute__((used)) static int stmfx_pinconf_get(struct pinctrl_dev *pctldev,
        unsigned int pin, unsigned long *config)
{
 struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 u32 param = pinconf_to_config_param(*config);
 struct pinctrl_gpio_range *range;
 u32 arg = 0;
 int ret, dir, type, pupd;

 range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
 if (!range)
  return -EINVAL;

 dir = stmfx_gpio_get_direction(&pctl->gpio_chip, pin);
 if (dir < 0)
  return dir;
 type = stmfx_pinconf_get_type(pctl, pin);
 if (type < 0)
  return type;
 pupd = stmfx_pinconf_get_pupd(pctl, pin);
 if (pupd < 0)
  return pupd;

 switch (param) {
 case 133:
  if ((!dir && (!type || !pupd)) || (dir && !type))
   arg = 1;
  break;
 case 132:
  if (dir && type && !pupd)
   arg = 1;
  break;
 case 131:
  if (type && pupd)
   arg = 1;
  break;
 case 130:
  if ((!dir && type) || (dir && !type))
   arg = 1;
  break;
 case 129:
  if ((!dir && !type) || (dir && type))
   arg = 1;
  break;
 case 128:
  if (dir)
   return -EINVAL;

  ret = stmfx_gpio_get(&pctl->gpio_chip, pin);
  if (ret < 0)
   return ret;

  arg = ret;
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
