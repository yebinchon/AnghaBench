
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct owl_pingroup {int dummy; } ;
struct owl_pinctrl {int lock; TYPE_1__* soc; } ;
struct TYPE_2__ {struct owl_pingroup* groups; } ;


 int owl_group_pinconf_arg2val (struct owl_pingroup const*,unsigned int,int *) ;
 int owl_group_pinconf_reg (struct owl_pingroup const*,unsigned int,int *,int *,int *) ;
 int owl_write_field (struct owl_pinctrl*,int ,int ,int ,int ) ;
 int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct owl_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int owl_group_config_set(struct pinctrl_dev *pctrldev,
    unsigned int group,
    unsigned long *configs,
    unsigned int num_configs)
{
 const struct owl_pingroup *g;
 struct owl_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrldev);
 unsigned long flags;
 unsigned int param;
 u32 reg, bit, width, arg;
 int ret, i;

 g = &pctrl->soc->groups[group];

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  ret = owl_group_pinconf_reg(g, param, &reg, &bit, &width);
  if (ret)
   return ret;

  ret = owl_group_pinconf_arg2val(g, param, &arg);
  if (ret)
   return ret;


  raw_spin_lock_irqsave(&pctrl->lock, flags);

  owl_write_field(pctrl, reg, arg, bit, width);

  raw_spin_unlock_irqrestore(&pctrl->lock, flags);
 }

 return 0;
}
