
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MSG_NO_WINDOW ;
 int MSG_WINDOW_SILENCED ;
 int MSG_WINDOW_SILENCE_DISABLED ;
 int spk_msg_get (int ) ;
 int synth_printf (char*,int ) ;
 int win_enabled ;
 int win_start ;

__attribute__((used)) static void speakup_win_enable(struct vc_data *vc)
{
 if (win_start < 2) {
  synth_printf("%s\n", spk_msg_get(MSG_NO_WINDOW));
  return;
 }
 win_enabled ^= 1;
 if (win_enabled)
  synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCED));
 else
  synth_printf("%s\n", spk_msg_get(MSG_WINDOW_SILENCE_DISABLED));
}
