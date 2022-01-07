
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int MAX_NICE ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int ap_pending_requests () ;
 int ap_poll_wait ;
 scalar_t__ ap_suspend_flag ;
 int ap_tasklet_fn (int ) ;
 int current ;
 int kthread_should_stop () ;
 scalar_t__ need_resched () ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int set_user_nice (int ,int ) ;
 int try_to_freeze () ;
 int wait ;

__attribute__((used)) static int ap_poll_thread(void *data)
{
 DECLARE_WAITQUEUE(wait, current);

 set_user_nice(current, MAX_NICE);
 set_freezable();
 while (!kthread_should_stop()) {
  add_wait_queue(&ap_poll_wait, &wait);
  set_current_state(TASK_INTERRUPTIBLE);
  if (ap_suspend_flag || !ap_pending_requests()) {
   schedule();
   try_to_freeze();
  }
  set_current_state(TASK_RUNNING);
  remove_wait_queue(&ap_poll_wait, &wait);
  if (need_resched()) {
   schedule();
   try_to_freeze();
   continue;
  }
  ap_tasklet_fn(0);
 }

 return 0;
}
