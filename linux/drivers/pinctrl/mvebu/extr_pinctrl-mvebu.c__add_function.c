
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pinctrl_function {int num_groups; char const* name; } ;


 int EEXIST ;
 int EOVERFLOW ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int _add_function(struct mvebu_pinctrl_function *funcs, int *funcsize,
   const char *name)
{
 if (*funcsize <= 0)
  return -EOVERFLOW;

 while (funcs->num_groups) {

  if (strcmp(funcs->name, name) == 0) {
   funcs->num_groups++;
   return -EEXIST;
  }
  funcs++;
 }


 funcs->name = name;
 funcs->num_groups = 1;
 (*funcsize)--;

 return 0;
}
