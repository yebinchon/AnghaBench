
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct owl_pinctrl {int lock; TYPE_1__* soc; } ;
struct owl_padinfo {int dummy; } ;
struct TYPE_2__ {int (* padctl_arg2val ) (struct owl_padinfo const*,unsigned int,int *) ;struct owl_padinfo* padinfo; } ;


 int ENOTSUPP ;
 int owl_pad_pinconf_reg (struct owl_padinfo const*,unsigned int,int *,int *,int *) ;
 int owl_write_field (struct owl_pinctrl*,int ,int ,int ,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct owl_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct owl_padinfo const*,unsigned int,int *) ;

__attribute__((used)) static int owl_pin_config_set(struct pinctrl_dev *pctrldev,
    unsigned int pin,
    unsigned long *configs,
    unsigned int num_configs)
{
 struct owl_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrldev);
 const struct owl_padinfo *info;
 unsigned long flags;
 unsigned int param;
 u32 reg, bit, width, arg;
 int ret = 0, i;

 info = &pctrl->soc->padinfo[pin];

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  ret = owl_pad_pinconf_reg(info, param, &reg, &bit, &width);
  if (ret)
   return ret;

  if (!pctrl->soc->padctl_arg2val)
   return -ENOTSUPP;

  ret = pctrl->soc->padctl_arg2val(info, param, &arg);
  if (ret)
   return ret;

  raw_spin_lock_irqsave(&pctrl->lock, flags);

  owl_write_field(pctrl, reg, arg, bit, width);

  raw_spin_unlock_irqrestore(&pctrl->lock, flags);
 }

 return ret;
}
