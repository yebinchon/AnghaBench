
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct vc_data {scalar_t__ vc_mode; TYPE_1__* vc_sw; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int (* con_scrolldelta ) (struct vc_data*,scalar_t__) ;} ;


 scalar_t__ KD_TEXT ;
 scalar_t__ blank_timer_expired ;
 int change_console (struct vc_data*) ;
 int clear_selection () ;
 int console_lock () ;
 int console_unlock () ;
 int do_blank_screen (int ) ;
 scalar_t__ do_poke_blanked_console ;
 size_t fg_console ;
 int hide_cursor (struct vc_data*) ;
 int notify_update (struct vc_data*) ;
 int poke_blanked_console () ;
 scalar_t__ scrollback_delta ;
 int stub1 (struct vc_data*,scalar_t__) ;
 TYPE_2__* vc_cons ;
 scalar_t__ vc_cons_allocated (size_t) ;
 size_t want_console ;

__attribute__((used)) static void console_callback(struct work_struct *ignored)
{
 console_lock();

 if (want_console >= 0) {
  if (want_console != fg_console &&
      vc_cons_allocated(want_console)) {
   hide_cursor(vc_cons[fg_console].d);
   change_console(vc_cons[want_console].d);



  }
  want_console = -1;
 }
 if (do_poke_blanked_console) {
  do_poke_blanked_console = 0;
  poke_blanked_console();
 }
 if (scrollback_delta) {
  struct vc_data *vc = vc_cons[fg_console].d;
  clear_selection();
  if (vc->vc_mode == KD_TEXT && vc->vc_sw->con_scrolldelta)
   vc->vc_sw->con_scrolldelta(vc, scrollback_delta);
  scrollback_delta = 0;
 }
 if (blank_timer_expired) {
  do_blank_screen(0);
  blank_timer_expired = 0;
 }
 notify_update(vc_cons[fg_console].d);

 console_unlock();
}
