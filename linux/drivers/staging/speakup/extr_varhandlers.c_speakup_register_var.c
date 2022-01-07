
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var_t {int var_id; } ;
struct st_var_header {size_t var_id; int var_type; struct var_t* data; } ;


 int BUG_ON (int) ;
 int E_DEFAULT ;
 int MAXVARS ;



 int spk_set_num_var (int ,struct st_var_header*,int ) ;
 int spk_set_string_var (char*,struct st_var_header*,int ) ;
 struct st_var_header* var_headers ;
 struct st_var_header** var_ptrs ;

void speakup_register_var(struct var_t *var)
{
 static char nothing[2] = "\0";
 int i;
 struct st_var_header *p_header;

 BUG_ON(!var || var->var_id < 0 || var->var_id >= MAXVARS);
 if (!var_ptrs[0]) {
  for (i = 0; i < MAXVARS; i++) {
   p_header = &var_headers[i];
   var_ptrs[p_header->var_id] = p_header;
   p_header->data = ((void*)0);
  }
 }
 p_header = var_ptrs[var->var_id];
 if (p_header->data)
  return;
 p_header->data = var;
 switch (p_header->var_type) {
 case 129:
  spk_set_string_var(nothing, p_header, 0);
  break;
 case 130:
 case 128:
  spk_set_num_var(0, p_header, E_DEFAULT);
  break;
 default:
  break;
 }
}
