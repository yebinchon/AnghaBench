
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pinctrl_group {unsigned int* pins; unsigned int npins; } ;
struct mvebu_pinctrl {unsigned int num_groups; struct mvebu_pinctrl_group* groups; } ;



__attribute__((used)) static struct mvebu_pinctrl_group *mvebu_pinctrl_find_group_by_pid(
 struct mvebu_pinctrl *pctl, unsigned pid)
{
 unsigned n;
 for (n = 0; n < pctl->num_groups; n++) {
  if (pid >= pctl->groups[n].pins[0] &&
      pid < pctl->groups[n].pins[0] +
   pctl->groups[n].npins)
   return &pctl->groups[n];
 }
 return ((void*)0);
}
