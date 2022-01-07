
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ default_val; } ;
struct TYPE_3__ {TYPE_2__ s; } ;
struct var_t {TYPE_1__ u; } ;
struct st_var_header {scalar_t__ p_val; struct var_t* data; } ;


 int E2BIG ;
 int ENODATA ;
 int ERESTART ;
 int MAXVARLEN ;
 int strcpy (char*,char const*) ;

int spk_set_string_var(const char *page, struct st_var_header *var, int len)
{
 struct var_t *var_data = var->data;

 if (!var_data)
  return -ENODATA;
 if (len > MAXVARLEN)
  return -E2BIG;
 if (!len) {
  if (!var_data->u.s.default_val)
   return 0;
  if (!var->p_val)
   var->p_val = var_data->u.s.default_val;
  if (var->p_val != var_data->u.s.default_val)
   strcpy((char *)var->p_val, var_data->u.s.default_val);
  return -ERESTART;
 } else if (var->p_val) {
  strcpy((char *)var->p_val, page);
 } else {
  return -E2BIG;
 }
 return 0;
}
