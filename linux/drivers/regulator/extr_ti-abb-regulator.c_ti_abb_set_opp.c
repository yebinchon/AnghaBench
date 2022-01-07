
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_abb_reg {int fbb_sel_mask; int rbb_sel_mask; int opp_sel_mask; int opp_change_mask; } ;
struct ti_abb_info {int opp_sel; } ;
struct ti_abb {scalar_t__ ldo_base; int control_reg; int setup_reg; struct ti_abb_reg* regs; } ;
struct device {int dummy; } ;
struct regulator_dev {struct device dev; } ;



 int TI_ABB_NOMINAL_OPP ;

 int ti_abb_clear_all_txdone (struct device*,struct ti_abb*) ;
 int ti_abb_program_ldovbb (struct device*,struct ti_abb*,struct ti_abb_info*) ;
 int ti_abb_rmw (int,int,int ) ;
 int ti_abb_wait_txdone (struct device*,struct ti_abb*) ;

__attribute__((used)) static int ti_abb_set_opp(struct regulator_dev *rdev, struct ti_abb *abb,
     struct ti_abb_info *info)
{
 const struct ti_abb_reg *regs = abb->regs;
 struct device *dev = &rdev->dev;
 int ret;

 ret = ti_abb_clear_all_txdone(dev, abb);
 if (ret)
  goto out;

 ti_abb_rmw(regs->fbb_sel_mask | regs->rbb_sel_mask, 0, abb->setup_reg);

 switch (info->opp_sel) {
 case 128:
  ti_abb_rmw(regs->rbb_sel_mask, 1, abb->setup_reg);
  break;
 case 129:
  ti_abb_rmw(regs->fbb_sel_mask, 1, abb->setup_reg);
  break;
 }


 ti_abb_rmw(regs->opp_sel_mask, info->opp_sel, abb->control_reg);






 if (abb->ldo_base && info->opp_sel != TI_ABB_NOMINAL_OPP)
  ti_abb_program_ldovbb(dev, abb, info);


 ti_abb_rmw(regs->opp_change_mask, 1, abb->control_reg);


 ret = ti_abb_wait_txdone(dev, abb);
 if (ret)
  goto out;

 ret = ti_abb_clear_all_txdone(dev, abb);
 if (ret)
  goto out;






 if (abb->ldo_base && info->opp_sel == TI_ABB_NOMINAL_OPP)
  ti_abb_program_ldovbb(dev, abb, info);

out:
 return ret;
}
