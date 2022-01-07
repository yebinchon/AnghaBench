
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rzn1_pinctrl {unsigned int ngroups; struct rzn1_pin_group const* groups; } ;
struct rzn1_pin_group {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static const struct rzn1_pin_group *rzn1_pinctrl_find_group_by_name(
 const struct rzn1_pinctrl *ipctl, const char *name)
{
 unsigned int i;

 for (i = 0; i < ipctl->ngroups; i++) {
  if (!strcmp(ipctl->groups[i].name, name))
   return &ipctl->groups[i];
 }

 return ((void*)0);
}
