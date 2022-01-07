
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_in_recovery; int ls_flags; int ls_recover_lock_wait; } ;


 int LSFL_RECOVER_DOWN ;
 int LSFL_RECOVER_LOCK ;
 int LSFL_RECOVER_WORK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 struct dlm_ls* dlm_find_lockspace_local (void*) ;
 int dlm_put_lockspace (struct dlm_ls*) ;
 int do_ls_recovery (struct dlm_ls*) ;
 int down_write (int *) ;
 scalar_t__ kthread_should_stop () ;
 int log_print (char*,void*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 int set_current_state (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_write (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dlm_recoverd(void *arg)
{
 struct dlm_ls *ls;

 ls = dlm_find_lockspace_local(arg);
 if (!ls) {
  log_print("dlm_recoverd: no lockspace %p", arg);
  return -1;
 }

 down_write(&ls->ls_in_recovery);
 set_bit(LSFL_RECOVER_LOCK, &ls->ls_flags);
 wake_up(&ls->ls_recover_lock_wait);

 while (1) {





  set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_stop()) {
   set_current_state(TASK_RUNNING);
   break;
  }
  if (!test_bit(LSFL_RECOVER_WORK, &ls->ls_flags) &&
      !test_bit(LSFL_RECOVER_DOWN, &ls->ls_flags)) {
   if (kthread_should_stop())
    break;
   schedule();
  }
  set_current_state(TASK_RUNNING);

  if (test_and_clear_bit(LSFL_RECOVER_DOWN, &ls->ls_flags)) {
   down_write(&ls->ls_in_recovery);
   set_bit(LSFL_RECOVER_LOCK, &ls->ls_flags);
   wake_up(&ls->ls_recover_lock_wait);
  }

  if (test_and_clear_bit(LSFL_RECOVER_WORK, &ls->ls_flags))
   do_ls_recovery(ls);
 }

 if (test_bit(LSFL_RECOVER_LOCK, &ls->ls_flags))
  up_write(&ls->ls_in_recovery);

 dlm_put_lockspace(ls);
 return 0;
}
