
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tpg_np {int tpg_np_comp; int tpg_np_kref; } ;
struct iscsi_portal_group {int dummy; } ;
struct iscsi_np {scalar_t__ np_thread_state; int np_thread_lock; int np_restart_comp; scalar_t__ np_thread; int np_reset_count; } ;


 scalar_t__ ISCSI_NP_THREAD_INACTIVE ;
 scalar_t__ ISCSI_NP_THREAD_RESET ;
 int SIGINT ;
 int atomic_inc (int *) ;
 int iscsit_login_kref_put ;
 int kref_put (int *,int ) ;
 int send_sig (int ,scalar_t__,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;

int iscsit_reset_np_thread(
 struct iscsi_np *np,
 struct iscsi_tpg_np *tpg_np,
 struct iscsi_portal_group *tpg,
 bool shutdown)
{
 spin_lock_bh(&np->np_thread_lock);
 if (np->np_thread_state == ISCSI_NP_THREAD_INACTIVE) {
  spin_unlock_bh(&np->np_thread_lock);
  return 0;
 }
 np->np_thread_state = ISCSI_NP_THREAD_RESET;
 atomic_inc(&np->np_reset_count);

 if (np->np_thread) {
  spin_unlock_bh(&np->np_thread_lock);
  send_sig(SIGINT, np->np_thread, 1);
  wait_for_completion(&np->np_restart_comp);
  spin_lock_bh(&np->np_thread_lock);
 }
 spin_unlock_bh(&np->np_thread_lock);

 if (tpg_np && shutdown) {
  kref_put(&tpg_np->tpg_np_kref, iscsit_login_kref_put);

  wait_for_completion(&tpg_np->tpg_np_comp);
 }

 return 0;
}
