
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_abb_info {int opp_sel; int vset; } ;
struct ti_abb {int ldovbb_override_mask; int ldovbb_vset_mask; int ldo_base; } ;
struct device {int dummy; } ;




 int __ffs (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void ti_abb_program_ldovbb(struct device *dev, const struct ti_abb *abb,
      struct ti_abb_info *info)
{
 u32 val;

 val = readl(abb->ldo_base);

 val &= ~(abb->ldovbb_override_mask | abb->ldovbb_vset_mask);

 switch (info->opp_sel) {
 case 128:
 case 129:
  val |= abb->ldovbb_override_mask;
  val |= info->vset << __ffs(abb->ldovbb_vset_mask);
  break;
 }

 writel(val, abb->ldo_base);
}
