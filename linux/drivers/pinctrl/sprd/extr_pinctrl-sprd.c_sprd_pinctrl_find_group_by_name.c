
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pinctrl_soc_info {int ngroups; struct sprd_pin_group* groups; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct sprd_pin_group {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static const struct sprd_pin_group *
sprd_pinctrl_find_group_by_name(struct sprd_pinctrl *sprd_pctl,
    const char *name)
{
 struct sprd_pinctrl_soc_info *info = sprd_pctl->info;
 const struct sprd_pin_group *grp = ((void*)0);
 int i;

 for (i = 0; i < info->ngroups; i++) {
  if (!strcmp(info->groups[i].name, name)) {
   grp = &info->groups[i];
   break;
  }
 }

 return grp;
}
