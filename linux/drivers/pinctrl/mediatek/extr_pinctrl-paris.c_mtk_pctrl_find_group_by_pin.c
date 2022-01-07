
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mtk_pinctrl_group {scalar_t__ pin; } ;
struct mtk_pinctrl {struct mtk_pinctrl_group* groups; TYPE_1__* soc; } ;
struct TYPE_2__ {int ngrps; } ;



__attribute__((used)) static struct mtk_pinctrl_group *
mtk_pctrl_find_group_by_pin(struct mtk_pinctrl *hw, u32 pin)
{
 int i;

 for (i = 0; i < hw->soc->ngrps; i++) {
  struct mtk_pinctrl_group *grp = hw->groups + i;

  if (grp->pin == pin)
   return grp;
 }

 return ((void*)0);
}
