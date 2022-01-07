
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_conn {int state_lock; int conn_logout_reason; int conn_logout_remove; int conn_state; int cid; struct iscsi_session* sess; } ;
struct iscsi_cmd {int i_state; int logout_response; int logout_cid; } ;


 int ISCSI_LOGOUT_CID_NOT_FOUND ;
 int ISCSI_LOGOUT_REASON_CLOSE_CONNECTION ;
 int TARG_CONN_STATE_IN_LOGOUT ;
 int atomic_set (int *,int) ;
 int iscsit_add_cmd_to_response_queue (struct iscsi_cmd*,struct iscsi_conn*,int ) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;
 struct iscsi_conn* iscsit_get_conn_from_cid (struct iscsi_session*,int ) ;
 int iscsit_inc_conn_usage_count (struct iscsi_conn*) ;
 int pr_debug (char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iscsit_logout_closeconnection(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
 struct iscsi_conn *l_conn;
 struct iscsi_session *sess = conn->sess;

 pr_debug("Received logout request CLOSECONNECTION for CID:"
  " %hu on CID: %hu.\n", cmd->logout_cid, conn->cid);





 if (conn->cid == cmd->logout_cid) {
  spin_lock_bh(&conn->state_lock);
  pr_debug("Moving to TARG_CONN_STATE_IN_LOGOUT.\n");
  conn->conn_state = TARG_CONN_STATE_IN_LOGOUT;

  atomic_set(&conn->conn_logout_remove, 1);
  conn->conn_logout_reason = ISCSI_LOGOUT_REASON_CLOSE_CONNECTION;
  iscsit_inc_conn_usage_count(conn);

  spin_unlock_bh(&conn->state_lock);
 } else {
  l_conn = iscsit_get_conn_from_cid(sess,
    cmd->logout_cid);
  if (!l_conn) {
   cmd->logout_response = ISCSI_LOGOUT_CID_NOT_FOUND;
   iscsit_add_cmd_to_response_queue(cmd, conn,
     cmd->i_state);
   return 0;
  }

  iscsit_dec_conn_usage_count(l_conn);
 }

 iscsit_add_cmd_to_response_queue(cmd, conn, cmd->i_state);

 return 0;
}
