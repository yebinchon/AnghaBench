
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_var_header {int name; } ;


 int MAXVARS ;
 scalar_t__ strcmp (char const*,int ) ;
 struct st_var_header** var_ptrs ;

struct st_var_header *spk_var_header_by_name(const char *name)
{
 int i;

 if (!name)
  return ((void*)0);

 for (i = 0; i < MAXVARS; i++) {
  if (strcmp(name, var_ptrs[i]->name) == 0)
   return var_ptrs[i];
 }
 return ((void*)0);
}
