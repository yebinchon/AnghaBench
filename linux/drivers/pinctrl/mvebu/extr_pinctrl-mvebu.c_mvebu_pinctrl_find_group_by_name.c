
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pinctrl_group {int name; } ;
struct mvebu_pinctrl {unsigned int num_groups; struct mvebu_pinctrl_group* groups; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct mvebu_pinctrl_group *mvebu_pinctrl_find_group_by_name(
 struct mvebu_pinctrl *pctl, const char *name)
{
 unsigned n;
 for (n = 0; n < pctl->num_groups; n++) {
  if (strcmp(name, pctl->groups[n].name) == 0)
   return &pctl->groups[n];
 }
 return ((void*)0);
}
