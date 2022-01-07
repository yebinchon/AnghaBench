
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct var_t {int dummy; } ;
typedef enum var_id_t { ____Placeholder_var_id_t } var_id_t ;
struct TYPE_2__ {struct var_t* data; } ;


 int BUG_ON (int) ;
 int MAXVARS ;
 TYPE_1__** var_ptrs ;

struct var_t *spk_get_var(enum var_id_t var_id)
{
 BUG_ON(var_id < 0 || var_id >= MAXVARS);
 BUG_ON(!var_ptrs[var_id]);
 return var_ptrs[var_id]->data;
}
