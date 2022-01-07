
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_37xx_pmx_func {int ngroups; char const* name; } ;


 int EEXIST ;
 int EOVERFLOW ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int armada_37xx_add_function(struct armada_37xx_pmx_func *funcs,
        int *funcsize, const char *name)
{
 int i = 0;

 if (*funcsize <= 0)
  return -EOVERFLOW;

 while (funcs->ngroups) {

  if (strcmp(funcs->name, name) == 0) {
   funcs->ngroups++;

   return -EEXIST;
  }
  funcs++;
  i++;
 }


 funcs->name = name;
 funcs->ngroups = 1;
 (*funcsize)--;

 return 0;
}
