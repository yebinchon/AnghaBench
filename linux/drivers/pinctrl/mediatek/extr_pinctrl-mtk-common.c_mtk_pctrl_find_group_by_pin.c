
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_pinctrl_group {scalar_t__ pin; } ;
struct mtk_pinctrl {int ngroups; struct mtk_pinctrl_group* groups; } ;



__attribute__((used)) static struct mtk_pinctrl_group *
mtk_pctrl_find_group_by_pin(struct mtk_pinctrl *pctl, u32 pin)
{
 int i;

 for (i = 0; i < pctl->ngroups; i++) {
  struct mtk_pinctrl_group *grp = pctl->groups + i;

  if (grp->pin == pin)
   return grp;
 }

 return ((void*)0);
}
