
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_pinctrl {int ngroups; int dev; struct at91_pin_group* groups; } ;
struct at91_pin_group {int * pins; int npins; int name; } ;


 int dev_dbg (int ,char*,char const*,int ,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static inline const struct at91_pin_group *at91_pinctrl_find_group_by_name(
    const struct at91_pinctrl *info,
    const char *name)
{
 const struct at91_pin_group *grp = ((void*)0);
 int i;

 for (i = 0; i < info->ngroups; i++) {
  if (strcmp(info->groups[i].name, name))
   continue;

  grp = &info->groups[i];
  dev_dbg(info->dev, "%s: %d 0:%d\n", name, grp->npins, grp->pins[0]);
  break;
 }

 return grp;
}
