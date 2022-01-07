
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {struct controller* next; } ;


 int TASK_INTERRUPTIBLE ;
 struct controller* cpqhp_ctrl_list ;
 int cpqhp_pushbutton_thread (scalar_t__) ;
 int dbg (char*) ;
 int interrupt_event_handler (struct controller*) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ pushbutton_pending ;
 int schedule () ;
 int set_current_state (int ) ;

__attribute__((used)) static int event_thread(void *data)
{
 struct controller *ctrl;

 while (1) {
  dbg("!!!!event_thread sleeping\n");
  set_current_state(TASK_INTERRUPTIBLE);
  schedule();

  if (kthread_should_stop())
   break;

  if (pushbutton_pending)
   cpqhp_pushbutton_thread(pushbutton_pending);
  else
   for (ctrl = cpqhp_ctrl_list; ctrl; ctrl = ctrl->next)
    interrupt_event_handler(ctrl);
 }
 dbg("event_thread signals exit\n");
 return 0;
}
