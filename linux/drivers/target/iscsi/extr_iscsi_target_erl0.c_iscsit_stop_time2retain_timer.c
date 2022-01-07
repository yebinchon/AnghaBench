
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_portal_group {int session_lock; } ;
struct iscsi_session {int time2retain_timer_flags; int sid; int time2retain_timer; struct iscsi_portal_group* tpg; } ;
struct iscsi_portal_group {struct se_portal_group tpg_se_tpg; } ;


 int ISCSI_TF_EXPIRED ;
 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 int del_timer_sync (int *) ;
 int lockdep_assert_held (int *) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsit_stop_time2retain_timer(struct iscsi_session *sess)
{
 struct iscsi_portal_group *tpg = sess->tpg;
 struct se_portal_group *se_tpg = &tpg->tpg_se_tpg;

 lockdep_assert_held(&se_tpg->session_lock);

 if (sess->time2retain_timer_flags & ISCSI_TF_EXPIRED)
  return -1;

 if (!(sess->time2retain_timer_flags & ISCSI_TF_RUNNING))
  return 0;

 sess->time2retain_timer_flags |= ISCSI_TF_STOP;
 spin_unlock(&se_tpg->session_lock);

 del_timer_sync(&sess->time2retain_timer);

 spin_lock(&se_tpg->session_lock);
 sess->time2retain_timer_flags &= ~ISCSI_TF_RUNNING;
 pr_debug("Stopped Time2Retain Timer for SID: %u\n",
   sess->sid);
 return 0;
}
