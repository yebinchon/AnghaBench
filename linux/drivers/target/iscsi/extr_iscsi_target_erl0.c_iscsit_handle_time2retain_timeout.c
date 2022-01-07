
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct se_portal_group {int session_lock; } ;
struct iscsi_session {int time2retain_timer_flags; int sid; int session_reinstatement; struct iscsi_portal_group* tpg; } ;
struct iscsi_portal_group {struct se_portal_group tpg_se_tpg; } ;


 int ISCSI_TF_EXPIRED ;
 int ISCSI_TF_STOP ;
 scalar_t__ atomic_read (int *) ;
 struct iscsi_session* from_timer (int ,struct timer_list*,int ) ;
 int iscsit_close_session (struct iscsi_session*) ;
 int iscsit_fill_cxn_timeout_err_stats (struct iscsi_session*) ;
 int pr_err (char*,...) ;
 struct iscsi_session* sess ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int time2retain_timer ;

void iscsit_handle_time2retain_timeout(struct timer_list *t)
{
 struct iscsi_session *sess = from_timer(sess, t, time2retain_timer);
 struct iscsi_portal_group *tpg = sess->tpg;
 struct se_portal_group *se_tpg = &tpg->tpg_se_tpg;

 spin_lock_bh(&se_tpg->session_lock);
 if (sess->time2retain_timer_flags & ISCSI_TF_STOP) {
  spin_unlock_bh(&se_tpg->session_lock);
  return;
 }
 if (atomic_read(&sess->session_reinstatement)) {
  pr_err("Exiting Time2Retain handler because"
    " session_reinstatement=1\n");
  spin_unlock_bh(&se_tpg->session_lock);
  return;
 }
 sess->time2retain_timer_flags |= ISCSI_TF_EXPIRED;

 pr_err("Time2Retain timer expired for SID: %u, cleaning up"
   " iSCSI session.\n", sess->sid);

 iscsit_fill_cxn_timeout_err_stats(sess);
 spin_unlock_bh(&se_tpg->session_lock);
 iscsit_close_session(sess);
}
