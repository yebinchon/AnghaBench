
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct berlin_pinctrl_function {char const* name; int ngroups; } ;
struct berlin_pinctrl {int nfunctions; struct berlin_pinctrl_function* functions; } ;


 int EEXIST ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int berlin_pinctrl_add_function(struct berlin_pinctrl *pctrl,
           const char *name)
{
 struct berlin_pinctrl_function *function = pctrl->functions;

 while (function->name) {
  if (!strcmp(function->name, name)) {
   function->ngroups++;
   return -EEXIST;
  }
  function++;
 }

 function->name = name;
 function->ngroups = 1;

 pctrl->nfunctions++;

 return 0;
}
