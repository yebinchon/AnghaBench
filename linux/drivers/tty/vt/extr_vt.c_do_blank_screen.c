
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; int vc_num; TYPE_1__* vc_sw; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int (* con_blank ) (struct vc_data*,int,int) ;} ;


 scalar_t__ KD_TEXT ;
 int VT_EVENT_BLANK ;
 int WARN_CONSOLE_UNLOCKED () ;
 scalar_t__ blank_off ;
 scalar_t__ blank_state ;
 scalar_t__ blank_timer_expired ;
 scalar_t__ blank_vesa_wait ;
 scalar_t__ console_blank_hook (int) ;
 int console_blanked ;
 int console_timer ;
 int del_timer_sync (int *) ;
 size_t fg_console ;
 int hide_cursor (struct vc_data*) ;
 scalar_t__ jiffies ;
 int might_sleep () ;
 int mod_timer (int *,scalar_t__) ;
 int save_screen (struct vc_data*) ;
 int set_origin (struct vc_data*) ;
 int stub1 (struct vc_data*,int,int) ;
 int stub2 (struct vc_data*,int,int) ;
 int stub3 (struct vc_data*,int,int) ;
 TYPE_2__* vc_cons ;
 int vesa_blank_mode ;
 scalar_t__ vesa_off_interval ;
 int vt_event_post (int ,int ,int ) ;

void do_blank_screen(int entering_gfx)
{
 struct vc_data *vc = vc_cons[fg_console].d;
 int i;

 might_sleep();

 WARN_CONSOLE_UNLOCKED();

 if (console_blanked) {
  if (blank_state == blank_vesa_wait) {
   blank_state = blank_off;
   vc->vc_sw->con_blank(vc, vesa_blank_mode + 1, 0);
  }
  return;
 }


 if (entering_gfx) {
  hide_cursor(vc);
  save_screen(vc);
  vc->vc_sw->con_blank(vc, -1, 1);
  console_blanked = fg_console + 1;
  blank_state = blank_off;
  set_origin(vc);
  return;
 }

 blank_state = blank_off;


 if (vc->vc_mode != KD_TEXT) {
  console_blanked = fg_console + 1;
  return;
 }

 hide_cursor(vc);
 del_timer_sync(&console_timer);
 blank_timer_expired = 0;

 save_screen(vc);

 i = vc->vc_sw->con_blank(vc, vesa_off_interval ? 1 : (vesa_blank_mode + 1), 0);
 console_blanked = fg_console + 1;
 if (i)
  set_origin(vc);

 if (console_blank_hook && console_blank_hook(1))
  return;

 if (vesa_off_interval && vesa_blank_mode) {
  blank_state = blank_vesa_wait;
  mod_timer(&console_timer, jiffies + vesa_off_interval);
 }
 vt_event_post(VT_EVENT_BLANK, vc->vc_num, vc->vc_num);
}
