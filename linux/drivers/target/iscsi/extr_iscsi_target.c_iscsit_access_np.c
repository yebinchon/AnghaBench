
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_portal_group {scalar_t__ tpg_state; int tpg_state_lock; int np_login_sem; } ;
struct iscsi_np {scalar_t__ np_thread_state; int np_thread_lock; } ;


 scalar_t__ ISCSI_NP_THREAD_ACTIVE ;
 scalar_t__ TPG_STATE_ACTIVE ;
 int down_interruptible (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int up (int *) ;

int iscsit_access_np(struct iscsi_np *np, struct iscsi_portal_group *tpg)
{
 int ret;



 spin_lock_bh(&np->np_thread_lock);
 if (np->np_thread_state != ISCSI_NP_THREAD_ACTIVE) {
  spin_unlock_bh(&np->np_thread_lock);
  return -1;
 }
 spin_unlock_bh(&np->np_thread_lock);



 spin_lock_bh(&tpg->tpg_state_lock);
 if (tpg->tpg_state != TPG_STATE_ACTIVE) {
  spin_unlock_bh(&tpg->tpg_state_lock);
  return -1;
 }
 spin_unlock_bh(&tpg->tpg_state_lock);




 ret = down_interruptible(&tpg->np_login_sem);
 if (ret != 0)
  return -1;

 spin_lock_bh(&tpg->tpg_state_lock);
 if (tpg->tpg_state != TPG_STATE_ACTIVE) {
  spin_unlock_bh(&tpg->tpg_state_lock);
  up(&tpg->np_login_sem);
  return -1;
 }
 spin_unlock_bh(&tpg->tpg_state_lock);

 return 0;
}
