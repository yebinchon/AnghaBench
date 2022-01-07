
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct timer_list {int dummy; } ;
struct iscsi_session {TYPE_3__* tpg; int isid; TYPE_1__* sess_ops; } ;
struct iscsi_conn {int nopin_response_timer_flags; int nopin_timer_lock; int cid; struct iscsi_session* sess; } ;
struct TYPE_6__ {scalar_t__ tpgt; TYPE_2__* tpg_tiqn; } ;
struct TYPE_5__ {int tiqn; } ;
struct TYPE_4__ {int InitiatorName; } ;


 int ISCSI_TF_RUNNING ;
 int ISCSI_TF_STOP ;
 struct iscsi_conn* conn ;
 struct iscsi_conn* from_timer (int ,struct timer_list*,int ) ;
 int iscsit_cause_connection_reinstatement (struct iscsi_conn*,int ) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;
 int iscsit_fill_cxn_timeout_err_stats (struct iscsi_session*) ;
 int iscsit_inc_conn_usage_count (struct iscsi_conn*) ;
 int nopin_response_timer ;
 int pr_err (char*,int ,int ,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_handle_nopin_response_timeout(struct timer_list *t)
{
 struct iscsi_conn *conn = from_timer(conn, t, nopin_response_timer);
 struct iscsi_session *sess = conn->sess;

 iscsit_inc_conn_usage_count(conn);

 spin_lock_bh(&conn->nopin_timer_lock);
 if (conn->nopin_response_timer_flags & ISCSI_TF_STOP) {
  spin_unlock_bh(&conn->nopin_timer_lock);
  iscsit_dec_conn_usage_count(conn);
  return;
 }

 pr_err("Did not receive response to NOPIN on CID: %hu, failing"
  " connection for I_T Nexus %s,i,0x%6phN,%s,t,0x%02x\n",
  conn->cid, sess->sess_ops->InitiatorName, sess->isid,
  sess->tpg->tpg_tiqn->tiqn, (u32)sess->tpg->tpgt);
 conn->nopin_response_timer_flags &= ~ISCSI_TF_RUNNING;
 spin_unlock_bh(&conn->nopin_timer_lock);

 iscsit_fill_cxn_timeout_err_stats(sess);
 iscsit_cause_connection_reinstatement(conn, 0);
 iscsit_dec_conn_usage_count(conn);
}
