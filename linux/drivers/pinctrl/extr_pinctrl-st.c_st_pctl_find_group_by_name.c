
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_pinctrl {int ngroups; struct st_pctl_group const* groups; } ;
struct st_pctl_group {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static inline const struct st_pctl_group *st_pctl_find_group_by_name(
 const struct st_pinctrl *info, const char *name)
{
 int i;

 for (i = 0; i < info->ngroups; i++) {
  if (!strcmp(info->groups[i].name, name))
   return &info->groups[i];
 }

 return ((void*)0);
}
