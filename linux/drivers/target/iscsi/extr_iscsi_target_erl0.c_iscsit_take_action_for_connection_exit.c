
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {scalar_t__ conn_state; int state_lock; int connection_exit; } ;


 scalar_t__ TARG_CONN_STATE_CLEANUP_WAIT ;
 scalar_t__ TARG_CONN_STATE_IN_LOGOUT ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int iscsit_close_connection (struct iscsi_conn*) ;
 int iscsit_handle_connection_cleanup (struct iscsi_conn*) ;
 int pr_debug (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_take_action_for_connection_exit(struct iscsi_conn *conn, bool *conn_freed)
{
 *conn_freed = 0;

 spin_lock_bh(&conn->state_lock);
 if (atomic_read(&conn->connection_exit)) {
  spin_unlock_bh(&conn->state_lock);
  return;
 }
 atomic_set(&conn->connection_exit, 1);

 if (conn->conn_state == TARG_CONN_STATE_IN_LOGOUT) {
  spin_unlock_bh(&conn->state_lock);
  iscsit_close_connection(conn);
  *conn_freed = 1;
  return;
 }

 if (conn->conn_state == TARG_CONN_STATE_CLEANUP_WAIT) {
  spin_unlock_bh(&conn->state_lock);
  return;
 }

 pr_debug("Moving to TARG_CONN_STATE_CLEANUP_WAIT.\n");
 conn->conn_state = TARG_CONN_STATE_CLEANUP_WAIT;
 spin_unlock_bh(&conn->state_lock);

 iscsit_handle_connection_cleanup(conn);
 *conn_freed = 1;
}
