
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_var_header {int name; } ;


 int E_DEFAULT ;
 int E_NEW_DEFAULT ;
 int pr_info (char*,int ) ;
 int spk_set_num_var (int,struct st_var_header*,int ) ;
 struct st_var_header* spk_var_header_by_name (char*) ;
 scalar_t__ synth ;

__attribute__((used)) static inline void spk_reset_default_value(char *header_name,
        int *synth_default_value, int idx)
{
 struct st_var_header *param;

 if (synth && synth_default_value) {
  param = spk_var_header_by_name(header_name);
  if (param) {
   spk_set_num_var(synth_default_value[idx],
     param, E_NEW_DEFAULT);
   spk_set_num_var(0, param, E_DEFAULT);
   pr_info("%s reset to default value\n", param->name);
  }
 }
}
