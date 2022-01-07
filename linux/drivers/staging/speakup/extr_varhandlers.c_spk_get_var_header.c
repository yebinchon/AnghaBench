
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_var_header {int data; } ;
typedef enum var_id_t { ____Placeholder_var_id_t } var_id_t ;


 int MAXVARS ;
 struct st_var_header** var_ptrs ;

struct st_var_header *spk_get_var_header(enum var_id_t var_id)
{
 struct st_var_header *p_header;

 if (var_id < 0 || var_id >= MAXVARS)
  return ((void*)0);
 p_header = var_ptrs[var_id];
 if (!p_header->data)
  return ((void*)0);
 return p_header;
}
