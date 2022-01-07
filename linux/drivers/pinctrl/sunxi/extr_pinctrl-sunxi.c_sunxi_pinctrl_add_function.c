
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_pinctrl_function {char const* name; int ngroups; } ;
struct sunxi_pinctrl {int nfunctions; struct sunxi_pinctrl_function* functions; } ;


 int EEXIST ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int sunxi_pinctrl_add_function(struct sunxi_pinctrl *pctl,
     const char *name)
{
 struct sunxi_pinctrl_function *func = pctl->functions;

 while (func->name) {

  if (strcmp(func->name, name) == 0) {
   func->ngroups++;
   return -EEXIST;
  }
  func++;
 }

 func->name = name;
 func->ngroups = 1;

 pctl->nfunctions++;

 return 0;
}
