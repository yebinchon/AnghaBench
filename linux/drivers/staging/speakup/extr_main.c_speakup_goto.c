
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MSG_ERROR ;
 int MSG_GOTO ;
 scalar_t__ handle_goto ;
 int spk_msg_get (int ) ;
 scalar_t__ spk_special_handler ;
 int synth_printf (char*,int ) ;

__attribute__((used)) static void speakup_goto(struct vc_data *vc)
{
 if (spk_special_handler) {
  synth_printf("%s\n", spk_msg_get(MSG_ERROR));
  return;
 }
 synth_printf("%s\n", spk_msg_get(MSG_GOTO));
 spk_special_handler = handle_goto;
}
