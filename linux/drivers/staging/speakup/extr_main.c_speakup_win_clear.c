
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int MSG_WINDOW_CLEARED ;
 int spk_msg_get (int ) ;
 int synth_printf (char*,int ) ;
 scalar_t__ win_bottom ;
 scalar_t__ win_left ;
 scalar_t__ win_right ;
 scalar_t__ win_start ;
 scalar_t__ win_top ;

__attribute__((used)) static void speakup_win_clear(struct vc_data *vc)
{
 win_top = 0;
 win_bottom = 0;
 win_left = 0;
 win_right = 0;
 win_start = 0;
 synth_printf("%s\n", spk_msg_get(MSG_WINDOW_CLEARED));
}
