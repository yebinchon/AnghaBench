
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pinctrl {int ngroups; struct rockchip_pin_group const* groups; } ;
struct rockchip_pin_group {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static inline const struct rockchip_pin_group *pinctrl_name_to_group(
     const struct rockchip_pinctrl *info,
     const char *name)
{
 int i;

 for (i = 0; i < info->ngroups; i++) {
  if (!strcmp(info->groups[i].name, name))
   return &info->groups[i];
 }

 return ((void*)0);
}
