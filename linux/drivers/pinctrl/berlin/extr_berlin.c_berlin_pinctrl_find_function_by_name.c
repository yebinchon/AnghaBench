
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct berlin_pinctrl {int dummy; } ;
struct berlin_desc_group {struct berlin_desc_function* functions; } ;
struct berlin_desc_function {scalar_t__ name; } ;


 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static struct berlin_desc_function *
berlin_pinctrl_find_function_by_name(struct berlin_pinctrl *pctrl,
         const struct berlin_desc_group *group,
         const char *fname)
{
 struct berlin_desc_function *function = group->functions;

 while (function->name) {
  if (!strcmp(function->name, fname))
   return function;

  function++;
 }

 return ((void*)0);
}
