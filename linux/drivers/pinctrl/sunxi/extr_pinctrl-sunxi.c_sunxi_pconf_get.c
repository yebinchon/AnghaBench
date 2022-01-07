
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sunxi_pinctrl {int membase; TYPE_1__* desc; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {scalar_t__ pin_base; } ;


 int EINVAL ;
 int ENOTSUPP ;




 int SUN4I_PINCTRL_NO_PULL ;
 int SUN4I_PINCTRL_PULL_DOWN ;
 int SUN4I_PINCTRL_PULL_UP ;
 int WARN_ON (int) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (int) ;
 int sunxi_pconf_reg (unsigned int,int,int*,int*,int*) ;

__attribute__((used)) static int sunxi_pconf_get(struct pinctrl_dev *pctldev, unsigned pin,
      unsigned long *config)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u32 offset, shift, mask, val;
 u16 arg;
 int ret;

 pin -= pctl->desc->pin_base;

 ret = sunxi_pconf_reg(pin, param, &offset, &shift, &mask);
 if (ret < 0)
  return ret;

 val = (readl(pctl->membase + offset) >> shift) & mask;

 switch (pinconf_to_config_param(*config)) {
 case 128:
  arg = (val + 1) * 10;
  break;

 case 129:
  if (val != SUN4I_PINCTRL_PULL_UP)
   return -EINVAL;
  arg = 1;
  break;

 case 130:
  if (val != SUN4I_PINCTRL_PULL_DOWN)
   return -EINVAL;
  arg = 1;
  break;

 case 131:
  if (val != SUN4I_PINCTRL_NO_PULL)
   return -EINVAL;
  arg = 0;
  break;

 default:

  WARN_ON(1);
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
