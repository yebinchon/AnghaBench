
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int low; int high; int default_val; int multiplier; char* synth_fmt; int* out_str; scalar_t__ offset; } ;
struct TYPE_5__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct st_var_header {int* p_val; scalar_t__ var_type; scalar_t__ var_id; struct var_t* data; } ;
struct TYPE_6__ {int (* synth_adjust ) (struct st_var_header*) ;} ;


 int ENODATA ;
 int ERANGE ;





 scalar_t__ FIRST_SYNTH_VAR ;
 scalar_t__ PITCH ;
 scalar_t__ PUNC_LEVEL ;
 scalar_t__ VAR_TIME ;
 int msecs_to_jiffies (int) ;
 char* spk_pitch_buff ;
 int spk_punc_mask ;
 int * spk_punc_masks ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct st_var_header*) ;
 TYPE_3__* synth ;
 int synth_printf (char*,char*) ;

int spk_set_num_var(int input, struct st_var_header *var, int how)
{
 int val;
 int *p_val = var->p_val;
 char buf[32];
 char *cp;
 struct var_t *var_data = var->data;

 if (!var_data)
  return -ENODATA;

 val = var_data->u.n.value;
 switch (how) {
 case 129:
  if (input < var_data->u.n.low || input > var_data->u.n.high)
   return -ERANGE;
  var_data->u.n.default_val = input;
  return 0;
 case 131:
  val = var_data->u.n.default_val;
  break;
 case 128:
  val = input;
  break;
 case 130:
  val += input;
  break;
 case 132:
  val -= input;
  break;
 }

 if (val < var_data->u.n.low || val > var_data->u.n.high)
  return -ERANGE;

 var_data->u.n.value = val;
 if (var->var_type == VAR_TIME && p_val) {
  *p_val = msecs_to_jiffies(val);
  return 0;
 }
 if (p_val)
  *p_val = val;
 if (var->var_id == PUNC_LEVEL) {
  spk_punc_mask = spk_punc_masks[val];
  return 0;
 }
 if (var_data->u.n.multiplier != 0)
  val *= var_data->u.n.multiplier;
 val += var_data->u.n.offset;
 if (var->var_id < FIRST_SYNTH_VAR || !synth)
  return 0;
 if (synth->synth_adjust)
  return synth->synth_adjust(var);

 if (!var_data->u.n.synth_fmt)
  return 0;
 if (var->var_id == PITCH)
  cp = spk_pitch_buff;
 else
  cp = buf;
 if (!var_data->u.n.out_str)
  sprintf(cp, var_data->u.n.synth_fmt, (int)val);
 else
  sprintf(cp, var_data->u.n.synth_fmt,
   var_data->u.n.out_str[val]);
 synth_printf("%s", cp);
 return 0;
}
