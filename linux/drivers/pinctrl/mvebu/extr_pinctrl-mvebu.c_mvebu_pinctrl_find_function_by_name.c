
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pinctrl_function {int name; } ;
struct mvebu_pinctrl {unsigned int num_functions; struct mvebu_pinctrl_function* functions; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct mvebu_pinctrl_function *mvebu_pinctrl_find_function_by_name(
 struct mvebu_pinctrl *pctl, const char *name)
{
 unsigned n;
 for (n = 0; n < pctl->num_functions; n++) {
  if (strcmp(name, pctl->functions[n].name) == 0)
   return &pctl->functions[n];
 }
 return ((void*)0);
}
