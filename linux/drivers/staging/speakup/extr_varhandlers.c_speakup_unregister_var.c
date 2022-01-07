
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_var_header {int * data; } ;
typedef enum var_id_t { ____Placeholder_var_id_t } var_id_t ;


 int BUG_ON (int) ;
 int MAXVARS ;
 struct st_var_header** var_ptrs ;

void speakup_unregister_var(enum var_id_t var_id)
{
 struct st_var_header *p_header;

 BUG_ON(var_id < 0 || var_id >= MAXVARS);
 p_header = var_ptrs[var_id];
 p_header->data = ((void*)0);
}
