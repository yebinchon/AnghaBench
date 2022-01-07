
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_np {int np_login_timer_flags; int np_thread_lock; int np_login_timer; } ;


 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 int del_timer_sync (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_stop_login_thread_timer(struct iscsi_np *np)
{
 spin_lock_bh(&np->np_thread_lock);
 if (!(np->np_login_timer_flags & ISCSI_TF_RUNNING)) {
  spin_unlock_bh(&np->np_thread_lock);
  return;
 }
 np->np_login_timer_flags |= ISCSI_TF_STOP;
 spin_unlock_bh(&np->np_thread_lock);

 del_timer_sync(&np->np_login_timer);

 spin_lock_bh(&np->np_thread_lock);
 np->np_login_timer_flags &= ~ISCSI_TF_RUNNING;
 spin_unlock_bh(&np->np_thread_lock);
}
