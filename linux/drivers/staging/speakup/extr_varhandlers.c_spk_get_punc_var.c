
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct punc_var_t {int var_id; } ;
typedef enum var_id_t { ____Placeholder_var_id_t } var_id_t ;


 struct punc_var_t* punc_vars ;

struct punc_var_t *spk_get_punc_var(enum var_id_t var_id)
{
 struct punc_var_t *rv = ((void*)0);
 struct punc_var_t *where;

 where = punc_vars;
 while ((where->var_id != -1) && (!rv)) {
  if (where->var_id == var_id)
   rv = where;
  else
   where++;
 }
 return rv;
}
