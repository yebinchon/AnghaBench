
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct iscsi_session {TYPE_1__* sess_ops; int nconn; } ;
struct iscsi_conn_recovery {int dummy; } ;
struct iscsi_conn {int cid; struct iscsi_session* sess; } ;
struct TYPE_2__ {int ErrorRecoveryLevel; scalar_t__ MaxConnections; int InitiatorName; } ;


 int ISCSI_LOGIN_STATUS_ISID_ERROR ;
 int ISCSI_STATUS_CLS_INITIATOR_ERR ;
 scalar_t__ atomic_read (int *) ;
 int iscsit_connection_reinstatement_rcfr (struct iscsi_conn*) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;
 int iscsit_discard_cr_cmds_by_expstatsn (struct iscsi_conn_recovery*,int ) ;
 struct iscsi_conn* iscsit_get_conn_from_cid_rcfr (struct iscsi_session*,int ) ;
 struct iscsi_conn_recovery* iscsit_get_inactive_connection_recovery_entry (struct iscsi_session*,int ) ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int pr_debug (char*,int ,...) ;
 int pr_err (char*,scalar_t__,...) ;

int iscsi_login_post_auth_non_zero_tsih(
 struct iscsi_conn *conn,
 u16 cid,
 u32 exp_statsn)
{
 struct iscsi_conn *conn_ptr = ((void*)0);
 struct iscsi_conn_recovery *cr = ((void*)0);
 struct iscsi_session *sess = conn->sess;
 conn_ptr = iscsit_get_conn_from_cid_rcfr(sess, cid);
 if (conn_ptr) {
  pr_err("Connection exists with CID %hu for %s,"
   " performing connection reinstatement.\n",
   conn_ptr->cid, sess->sess_ops->InitiatorName);

  iscsit_connection_reinstatement_rcfr(conn_ptr);
  iscsit_dec_conn_usage_count(conn_ptr);
 }
 if (sess->sess_ops->ErrorRecoveryLevel == 2) {
  cr = iscsit_get_inactive_connection_recovery_entry(
    sess, cid);
  if (cr) {
   pr_debug("Performing implicit logout"
    " for connection recovery on CID: %hu\n",
     conn->cid);
   iscsit_discard_cr_cmds_by_expstatsn(cr, exp_statsn);
  }
 }







 pr_debug("Adding CID %hu to existing session for %s.\n",
   cid, sess->sess_ops->InitiatorName);

 if ((atomic_read(&sess->nconn) + 1) > sess->sess_ops->MaxConnections) {
  pr_err("Adding additional connection to this session"
   " would exceed MaxConnections %d, login failed.\n",
    sess->sess_ops->MaxConnections);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_ISID_ERROR);
  return -1;
 }

 return 0;
}
