
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct iscsi_np {int np_login_timer_flags; int np_thread_lock; scalar_t__ np_thread; int np_sockaddr; } ;


 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 int SIGINT ;
 struct iscsi_np* from_timer (int ,struct timer_list*,int ) ;
 struct iscsi_np* np ;
 int np_login_timer ;
 int pr_err (char*,int *) ;
 int send_sig (int ,scalar_t__,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_handle_login_thread_timeout(struct timer_list *t)
{
 struct iscsi_np *np = from_timer(np, t, np_login_timer);

 spin_lock_bh(&np->np_thread_lock);
 pr_err("iSCSI Login timeout on Network Portal %pISpc\n",
   &np->np_sockaddr);

 if (np->np_login_timer_flags & ISCSI_TF_STOP) {
  spin_unlock_bh(&np->np_thread_lock);
  return;
 }

 if (np->np_thread)
  send_sig(SIGINT, np->np_thread, 1);

 np->np_login_timer_flags &= ~ISCSI_TF_RUNNING;
 spin_unlock_bh(&np->np_thread_lock);
}
