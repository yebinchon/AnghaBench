
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_cols; } ;
typedef int info ;


 int MSG_END ;
 int MSG_END_BEFORE_START ;
 int MSG_START ;
 int MSG_WINDOW_ALREADY_SET ;
 int MSG_WINDOW_BOUNDARY ;
 int MSG_WINDOW_LINE ;
 int snprintf (char*,int,char*,...) ;
 char* spk_msg_get (int ) ;
 scalar_t__ spk_x ;
 scalar_t__ spk_y ;
 int synth_printf (char*,char*) ;
 scalar_t__ win_bottom ;
 scalar_t__ win_left ;
 scalar_t__ win_right ;
 int win_start ;
 scalar_t__ win_top ;

__attribute__((used)) static void speakup_win_set(struct vc_data *vc)
{
 char info[40];

 if (win_start > 1) {
  synth_printf("%s\n", spk_msg_get(MSG_WINDOW_ALREADY_SET));
  return;
 }
 if (spk_x < win_left || spk_y < win_top) {
  synth_printf("%s\n", spk_msg_get(MSG_END_BEFORE_START));
  return;
 }
 if (win_start && spk_x == win_left && spk_y == win_top) {
  win_left = 0;
  win_right = vc->vc_cols - 1;
  win_bottom = spk_y;
  snprintf(info, sizeof(info), spk_msg_get(MSG_WINDOW_LINE),
    (int)win_top + 1);
 } else {
  if (!win_start) {
   win_top = spk_y;
   win_left = spk_x;
  } else {
   win_bottom = spk_y;
   win_right = spk_x;
  }
  snprintf(info, sizeof(info), spk_msg_get(MSG_WINDOW_BOUNDARY),
    (win_start) ?
    spk_msg_get(MSG_END) : spk_msg_get(MSG_START),
    (int)spk_y + 1, (int)spk_x + 1);
 }
 synth_printf("%s\n", info);
 win_start++;
}
