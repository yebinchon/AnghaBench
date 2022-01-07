
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mode; int acqsig; } ;
struct vc_data {unsigned char vc_mode; int vc_num; TYPE_1__ vt_mode; int vt_pid; } ;
struct TYPE_6__ {TYPE_2__* d; } ;
struct TYPE_5__ {unsigned char vc_mode; } ;


 unsigned char KD_TEXT ;
 int VT_EVENT_SWITCH ;
 scalar_t__ VT_PROCESS ;
 int do_blank_screen (int) ;
 int do_unblank_screen (int) ;
 size_t fg_console ;
 scalar_t__ kill_pid (int ,int ,int) ;
 size_t last_console ;
 int reset_vc (struct vc_data*) ;
 int switch_screen (struct vc_data*) ;
 TYPE_3__* vc_cons ;
 int vt_event_post (int ,int,int ) ;

__attribute__((used)) static void complete_change_console(struct vc_data *vc)
{
 unsigned char old_vc_mode;
 int old = fg_console;

 last_console = fg_console;






 old_vc_mode = vc_cons[fg_console].d->vc_mode;
 switch_screen(vc);
 if (old_vc_mode != vc->vc_mode) {
  if (vc->vc_mode == KD_TEXT)
   do_unblank_screen(1);
  else
   do_blank_screen(1);
 }






 if (vc->vt_mode.mode == VT_PROCESS) {





  if (kill_pid(vc->vt_pid, vc->vt_mode.acqsig, 1) != 0) {
   reset_vc(vc);

   if (old_vc_mode != vc->vc_mode) {
    if (vc->vc_mode == KD_TEXT)
     do_unblank_screen(1);
    else
     do_blank_screen(1);
   }
  }
 }




 vt_event_post(VT_EVENT_SWITCH, old, vc->vc_num);
 return;
}
