
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {scalar_t__ vc_mode; int vc_num; TYPE_1__* vc_sw; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {scalar_t__ (* con_blank ) (struct vc_data*,int ,int) ;} ;


 int HZ ;
 scalar_t__ KD_TEXT ;
 int VT_EVENT_UNBLANK ;
 int WARN_CONSOLE_UNLOCKED () ;
 int blank_normal_wait ;
 int blank_state ;
 int blankinterval ;
 int console_blank_hook (int ) ;
 scalar_t__ console_blanked ;
 int console_timer ;
 int fg_console ;
 scalar_t__ ignore_poke ;
 scalar_t__ jiffies ;
 int might_sleep () ;
 int mod_timer (int *,scalar_t__) ;
 int oops_in_progress ;
 int pr_warn (char*,int) ;
 int set_cursor (struct vc_data*) ;
 int set_palette (struct vc_data*) ;
 scalar_t__ stub1 (struct vc_data*,int ,int) ;
 int update_screen (struct vc_data*) ;
 TYPE_2__* vc_cons ;
 int vc_cons_allocated (int) ;
 int vt_event_post (int ,int ,int ) ;

void do_unblank_screen(int leaving_gfx)
{
 struct vc_data *vc;





 if (!oops_in_progress)
  might_sleep();

 WARN_CONSOLE_UNLOCKED();

 ignore_poke = 0;
 if (!console_blanked)
  return;
 if (!vc_cons_allocated(fg_console)) {

  pr_warn("unblank_screen: tty %d not allocated ??\n",
   fg_console + 1);
  return;
 }
 vc = vc_cons[fg_console].d;
 if (vc->vc_mode != KD_TEXT)
  return;

 if (blankinterval) {
  mod_timer(&console_timer, jiffies + (blankinterval * HZ));
  blank_state = blank_normal_wait;
 }

 console_blanked = 0;
 if (vc->vc_sw->con_blank(vc, 0, leaving_gfx))

  update_screen(vc);
 if (console_blank_hook)
  console_blank_hook(0);
 set_palette(vc);
 set_cursor(vc);
 vt_event_post(VT_EVENT_UNBLANK, vc->vc_num, vc->vc_num);
}
