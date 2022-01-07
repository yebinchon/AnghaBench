
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int cpqhp_event_thread ;
 struct timer_list* pushbutton_pending ;
 int wake_up_process (int ) ;

__attribute__((used)) static void pushbutton_helper_thread(struct timer_list *t)
{
 pushbutton_pending = t;

 wake_up_process(cpqhp_event_thread);
}
