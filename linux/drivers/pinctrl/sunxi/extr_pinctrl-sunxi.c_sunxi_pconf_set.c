
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sunxi_pinctrl {int membase; int lock; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;




 int WARN_ON (int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int) ;
 int sunxi_pconf_reg (unsigned int,int,int*,int*,int*) ;
 int writel (int,int) ;

__attribute__((used)) static int sunxi_pconf_set(struct pinctrl_dev *pctldev, unsigned pin,
      unsigned long *configs, unsigned num_configs)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 int i;

 for (i = 0; i < num_configs; i++) {
  enum pin_config_param param;
  unsigned long flags;
  u32 offset, shift, mask, reg;
  u32 arg, val;
  int ret;

  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  ret = sunxi_pconf_reg(pin, param, &offset, &shift, &mask);
  if (ret < 0)
   return ret;

  switch (param) {
  case 128:
   if (arg < 10 || arg > 40)
    return -EINVAL;







   val = arg / 10 - 1;
   break;
  case 131:
   val = 0;
   break;
  case 129:
   if (arg == 0)
    return -EINVAL;
   val = 1;
   break;
  case 130:
   if (arg == 0)
    return -EINVAL;
   val = 2;
   break;
  default:

   WARN_ON(1);
   return -ENOTSUPP;
  }

  raw_spin_lock_irqsave(&pctl->lock, flags);
  reg = readl(pctl->membase + offset);
  reg &= ~(mask << shift);
  writel(reg | val << shift, pctl->membase + offset);
  raw_spin_unlock_irqrestore(&pctl->lock, flags);
 }

 return 0;
}
