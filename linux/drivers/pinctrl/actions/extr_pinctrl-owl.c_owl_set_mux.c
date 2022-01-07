
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct owl_pingroup {scalar_t__ mfpctl_reg; } ;
struct owl_pinctrl {int lock; scalar_t__ base; TYPE_1__* soc; } ;
struct TYPE_2__ {struct owl_pingroup* groups; } ;


 int EINVAL ;
 scalar_t__ get_group_mfp_mask_val (struct owl_pingroup const*,unsigned int,int *,int *) ;
 int owl_update_bits (scalar_t__,int ,int ) ;
 struct owl_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int owl_set_mux(struct pinctrl_dev *pctrldev,
    unsigned int function,
    unsigned int group)
{
 struct owl_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrldev);
 const struct owl_pingroup *g;
 unsigned long flags;
 u32 val, mask;

 g = &pctrl->soc->groups[group];

 if (get_group_mfp_mask_val(g, function, &mask, &val))
  return -EINVAL;

 raw_spin_lock_irqsave(&pctrl->lock, flags);

 owl_update_bits(pctrl->base + g->mfpctl_reg, mask, val);

 raw_spin_unlock_irqrestore(&pctrl->lock, flags);

 return 0;
}
