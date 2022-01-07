
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_3__ {char* name; } ;


 int FIRST_EDIT_BITS ;
 int MSG_EDIT_PROMPT ;
 int MSG_ERROR ;
 scalar_t__ edit_bits ;
 TYPE_1__* pb_edit ;
 char* spk_msg_get (int ) ;
 TYPE_1__* spk_punc_info ;
 scalar_t__ spk_special_handler ;
 int synth_printf (char*,char*) ;
 int this_speakup_key ;

__attribute__((used)) static void speakup_bits(struct vc_data *vc)
{
 int val = this_speakup_key - (FIRST_EDIT_BITS - 1);

 if (spk_special_handler || val < 1 || val > 6) {
  synth_printf("%s\n", spk_msg_get(MSG_ERROR));
  return;
 }
 pb_edit = &spk_punc_info[val];
 synth_printf(spk_msg_get(MSG_EDIT_PROMPT), pb_edit->name);
 spk_special_handler = edit_bits;
}
