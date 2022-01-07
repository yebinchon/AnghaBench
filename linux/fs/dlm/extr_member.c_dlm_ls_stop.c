
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {scalar_t__ ls_recover_begin; int ls_recover_lock; scalar_t__ ls_recover_status; scalar_t__ ls_slots_size; scalar_t__ ls_num_slots; int * ls_slots; int ls_flags; int ls_recover_lock_wait; int ls_recoverd_task; int ls_recv_active; int ls_recover_seq; } ;


 int LSFL_RECOVER_DOWN ;
 int LSFL_RECOVER_LOCK ;
 int LSFL_RECOVER_STOP ;
 int LSFL_RUNNING ;
 int dlm_lsop_recover_prep (struct dlm_ls*) ;
 int dlm_recoverd_resume (struct dlm_ls*) ;
 int dlm_recoverd_suspend (struct dlm_ls*) ;
 int down_write (int *) ;
 scalar_t__ jiffies ;
 int kfree (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int up_write (int *) ;
 int wait_event (int ,int ) ;
 int wake_up_process (int ) ;

int dlm_ls_stop(struct dlm_ls *ls)
{
 int new;
 down_write(&ls->ls_recv_active);







 spin_lock(&ls->ls_recover_lock);
 set_bit(LSFL_RECOVER_STOP, &ls->ls_flags);
 new = test_and_clear_bit(LSFL_RUNNING, &ls->ls_flags);
 ls->ls_recover_seq++;
 spin_unlock(&ls->ls_recover_lock);






 up_write(&ls->ls_recv_active);
 if (new) {
  set_bit(LSFL_RECOVER_DOWN, &ls->ls_flags);
  wake_up_process(ls->ls_recoverd_task);
  wait_event(ls->ls_recover_lock_wait,
      test_bit(LSFL_RECOVER_LOCK, &ls->ls_flags));
 }







 dlm_recoverd_suspend(ls);

 spin_lock(&ls->ls_recover_lock);
 kfree(ls->ls_slots);
 ls->ls_slots = ((void*)0);
 ls->ls_num_slots = 0;
 ls->ls_slots_size = 0;
 ls->ls_recover_status = 0;
 spin_unlock(&ls->ls_recover_lock);

 dlm_recoverd_resume(ls);

 if (!ls->ls_recover_begin)
  ls->ls_recover_begin = jiffies;

 dlm_lsop_recover_prep(ls);
 return 0;
}
