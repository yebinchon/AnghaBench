
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MSG_MARK_CLEARED ;
 int MSG_PASTE ;
 scalar_t__ mark_cut_flag ;
 int speakup_paste_selection (int ) ;
 int spk_msg_get (int ) ;
 int synth_printf (char*,int ) ;
 int tty ;

__attribute__((used)) static void speakup_paste(struct vc_data *vc)
{
 if (mark_cut_flag) {
  mark_cut_flag = 0;
  synth_printf("%s\n", spk_msg_get(MSG_MARK_CLEARED));
 } else {
  synth_printf("%s\n", spk_msg_get(MSG_PASTE));
  speakup_paste_selection(tty);
 }
}
