
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_37xx_pinctrl {int ngroups; struct armada_37xx_pin_group* groups; } ;
struct armada_37xx_pin_group {int npins; int extra_npins; int* pins; } ;



__attribute__((used)) static struct armada_37xx_pin_group *armada_37xx_find_next_grp_by_pin(
 struct armada_37xx_pinctrl *info, int pin, int *grp)
{
 while (*grp < info->ngroups) {
  struct armada_37xx_pin_group *group = &info->groups[*grp];
  int j;

  *grp = *grp + 1;
  for (j = 0; j < (group->npins + group->extra_npins); j++)
   if (group->pins[j] == pin)
    return group;
 }
 return ((void*)0);
}
