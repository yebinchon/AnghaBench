
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {int lock; struct intel_pingroup* groups; } ;
struct intel_pingroup {int mode; unsigned int npins; int * pins; } ;


 int BUFCFG_PINMODE_MASK ;
 int BUFCFG_PINMODE_SHIFT ;
 int EBUSY ;
 int mrfld_buf_available (struct mrfld_pinctrl*,int ) ;
 int mrfld_update_bufcfg (struct mrfld_pinctrl*,int ,int,int) ;
 struct mrfld_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mrfld_pinmux_set_mux(struct pinctrl_dev *pctldev,
    unsigned int function,
    unsigned int group)
{
 struct mrfld_pinctrl *mp = pinctrl_dev_get_drvdata(pctldev);
 const struct intel_pingroup *grp = &mp->groups[group];
 u32 bits = grp->mode << BUFCFG_PINMODE_SHIFT;
 u32 mask = BUFCFG_PINMODE_MASK;
 unsigned long flags;
 unsigned int i;





 for (i = 0; i < grp->npins; i++) {
  if (!mrfld_buf_available(mp, grp->pins[i]))
   return -EBUSY;
 }


 raw_spin_lock_irqsave(&mp->lock, flags);
 for (i = 0; i < grp->npins; i++)
  mrfld_update_bufcfg(mp, grp->pins[i], bits, mask);
 raw_spin_unlock_irqrestore(&mp->lock, flags);

 return 0;
}
