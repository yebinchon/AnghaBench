
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_pinctrl_group {int name; } ;
struct sunxi_pinctrl {int ngroups; struct sunxi_pinctrl_group* groups; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static struct sunxi_pinctrl_group *
sunxi_pinctrl_find_group_by_name(struct sunxi_pinctrl *pctl, const char *group)
{
 int i;

 for (i = 0; i < pctl->ngroups; i++) {
  struct sunxi_pinctrl_group *grp = pctl->groups + i;

  if (!strcmp(grp->name, group))
   return grp;
 }

 return ((void*)0);
}
