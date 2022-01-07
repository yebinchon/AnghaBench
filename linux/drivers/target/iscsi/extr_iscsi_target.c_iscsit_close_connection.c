
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iscsi_session {int session_wait_comp; int sleep_on_sess_wait_comp; int conn_lock; int session_continuation; int session_state; int session_logout; int session_fall_back_to_erl0; int session_reinstatement; int session_stop_active; int nconn; TYPE_1__* sess_ops; int sid; } ;
struct iscsi_conn {scalar_t__ conn_state; scalar_t__ conn_logout_reason; TYPE_2__* conn_transport; scalar_t__ sock; scalar_t__ conn_rx_hash; scalar_t__ conn_tx_hash; int state_lock; int connection_reinstatement; int conn_post_wait_comp; int conn_wait_rcfr_comp; int connection_wait_rcfr; int conn_wait_comp; int sleep_on_conn_wait_comp; int connection_recovery; int conn_list; int conn_logout_remove; int bitmap_id; scalar_t__ rx_thread; int rx_thread_active; scalar_t__ tx_thread; int tx_thread_active; int conn_logout_comp; int cid; struct iscsi_session* sess; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_8__ {int comm; } ;
struct TYPE_7__ {int ts_bitmap_lock; int ts_bitmap; } ;
struct TYPE_6__ {int (* iscsit_free_conn ) (struct iscsi_conn*) ;int (* iscsit_wait_conn ) (struct iscsi_conn*) ;int rdma_shutdown; } ;
struct TYPE_5__ {int ErrorRecoveryLevel; int InitiatorName; } ;


 scalar_t__ ISCSI_LOGOUT_REASON_CLOSE_CONNECTION ;
 scalar_t__ ISCSI_LOGOUT_REASON_CLOSE_SESSION ;
 int ISCSI_RX_THREAD_NAME ;
 int ISCSI_TX_THREAD_NAME ;
 int SIGINT ;
 scalar_t__ TARG_CONN_STATE_FREE ;
 scalar_t__ TARG_CONN_STATE_IN_LOGOUT ;
 int TARG_SESS_STATE_FAILED ;
 int TARG_SESS_STATE_FREE ;
 int ahash_request_free (scalar_t__) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int bitmap_release_region (int ,int ,int ) ;
 scalar_t__ cmpxchg (int *,int,int) ;
 int complete (int *) ;
 struct crypto_ahash* crypto_ahash_reqtfm (scalar_t__) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 TYPE_4__* current ;
 int get_order (int) ;
 int iscsit_build_conn_drop_async_message (struct iscsi_conn*) ;
 int iscsit_check_conn_usage_count (struct iscsi_conn*) ;
 int iscsit_clear_ooo_cmdsns_for_conn (struct iscsi_conn*) ;
 int iscsit_close_session (struct iscsi_session*) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;
 int iscsit_dec_session_usage_count (struct iscsi_session*) ;
 int iscsit_discard_unacknowledged_ooo_cmdsns_for_conn (struct iscsi_conn*) ;
 int iscsit_free_conn (struct iscsi_conn*) ;
 int iscsit_free_queue_reqs_for_conn (struct iscsi_conn*) ;
 TYPE_3__* iscsit_global ;
 int iscsit_prepare_cmds_for_reallegiance (struct iscsi_conn*) ;
 int iscsit_release_commands_from_conn (struct iscsi_conn*) ;
 int iscsit_start_time2retain_handler (struct iscsi_session*) ;
 int iscsit_stop_nopin_response_timer (struct iscsi_conn*) ;
 int iscsit_stop_nopin_timer (struct iscsi_conn*) ;
 int iscsit_stop_session (struct iscsi_session*,int ,int ) ;
 int iscsit_stop_timers_for_cmds (struct iscsi_conn*) ;
 int kthread_stop (scalar_t__) ;
 int list_del (int *) ;
 int pr_debug (char*,...) ;
 int send_sig (int ,scalar_t__,int) ;
 int sock_release (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int strcmp (int ,int ) ;
 int stub1 (struct iscsi_conn*) ;
 int stub2 (struct iscsi_conn*) ;
 int wait_for_completion (int *) ;

int iscsit_close_connection(
 struct iscsi_conn *conn)
{
 int conn_logout = (conn->conn_state == TARG_CONN_STATE_IN_LOGOUT);
 struct iscsi_session *sess = conn->sess;

 pr_debug("Closing iSCSI connection CID %hu on SID:"
  " %u\n", conn->cid, sess->sid);
 if (!conn->conn_transport->rdma_shutdown)
  complete(&conn->conn_logout_comp);

 if (!strcmp(current->comm, ISCSI_RX_THREAD_NAME)) {
  if (conn->tx_thread &&
      cmpxchg(&conn->tx_thread_active, 1, 0)) {
   send_sig(SIGINT, conn->tx_thread, 1);
   kthread_stop(conn->tx_thread);
  }
 } else if (!strcmp(current->comm, ISCSI_TX_THREAD_NAME)) {
  if (conn->rx_thread &&
      cmpxchg(&conn->rx_thread_active, 1, 0)) {
   send_sig(SIGINT, conn->rx_thread, 1);
   kthread_stop(conn->rx_thread);
  }
 }

 spin_lock(&iscsit_global->ts_bitmap_lock);
 bitmap_release_region(iscsit_global->ts_bitmap, conn->bitmap_id,
         get_order(1));
 spin_unlock(&iscsit_global->ts_bitmap_lock);

 iscsit_stop_timers_for_cmds(conn);
 iscsit_stop_nopin_response_timer(conn);
 iscsit_stop_nopin_timer(conn);

 if (conn->conn_transport->iscsit_wait_conn)
  conn->conn_transport->iscsit_wait_conn(conn);
 if (atomic_read(&conn->connection_recovery)) {
  iscsit_discard_unacknowledged_ooo_cmdsns_for_conn(conn);
  iscsit_prepare_cmds_for_reallegiance(conn);
 } else {
  iscsit_clear_ooo_cmdsns_for_conn(conn);
  iscsit_release_commands_from_conn(conn);
 }
 iscsit_free_queue_reqs_for_conn(conn);






 if (atomic_read(&conn->conn_logout_remove)) {
  if (conn->conn_logout_reason == ISCSI_LOGOUT_REASON_CLOSE_SESSION) {
   iscsit_dec_conn_usage_count(conn);
   iscsit_dec_session_usage_count(sess);
  }
  if (conn->conn_logout_reason == ISCSI_LOGOUT_REASON_CLOSE_CONNECTION)
   iscsit_dec_conn_usage_count(conn);

  atomic_set(&conn->conn_logout_remove, 0);
  atomic_set(&sess->session_reinstatement, 0);
  atomic_set(&sess->session_fall_back_to_erl0, 1);
 }

 spin_lock_bh(&sess->conn_lock);
 list_del(&conn->conn_list);






 if (atomic_read(&conn->connection_recovery))
  iscsit_build_conn_drop_async_message(conn);

 spin_unlock_bh(&sess->conn_lock);






 spin_lock_bh(&conn->state_lock);
 if (atomic_read(&conn->sleep_on_conn_wait_comp)) {
  spin_unlock_bh(&conn->state_lock);
  complete(&conn->conn_wait_comp);
  wait_for_completion(&conn->conn_post_wait_comp);
  spin_lock_bh(&conn->state_lock);
 }







 if (atomic_read(&conn->connection_wait_rcfr)) {
  spin_unlock_bh(&conn->state_lock);
  complete(&conn->conn_wait_rcfr_comp);
  wait_for_completion(&conn->conn_post_wait_comp);
  spin_lock_bh(&conn->state_lock);
 }
 atomic_set(&conn->connection_reinstatement, 1);
 spin_unlock_bh(&conn->state_lock);





 iscsit_check_conn_usage_count(conn);

 ahash_request_free(conn->conn_tx_hash);
 if (conn->conn_rx_hash) {
  struct crypto_ahash *tfm;

  tfm = crypto_ahash_reqtfm(conn->conn_rx_hash);
  ahash_request_free(conn->conn_rx_hash);
  crypto_free_ahash(tfm);
 }

 if (conn->sock)
  sock_release(conn->sock);

 if (conn->conn_transport->iscsit_free_conn)
  conn->conn_transport->iscsit_free_conn(conn);

 pr_debug("Moving to TARG_CONN_STATE_FREE.\n");
 conn->conn_state = TARG_CONN_STATE_FREE;
 iscsit_free_conn(conn);

 spin_lock_bh(&sess->conn_lock);
 atomic_dec(&sess->nconn);
 pr_debug("Decremented iSCSI connection count to %hu from node:"
  " %s\n", atomic_read(&sess->nconn),
  sess->sess_ops->InitiatorName);




 if ((sess->sess_ops->ErrorRecoveryLevel != 2) && !conn_logout &&
      !atomic_read(&sess->session_logout))
  atomic_set(&sess->session_fall_back_to_erl0, 1);







 if (atomic_read(&sess->nconn)) {
  if (!atomic_read(&sess->session_reinstatement) &&
      !atomic_read(&sess->session_fall_back_to_erl0)) {
   spin_unlock_bh(&sess->conn_lock);
   return 0;
  }
  if (!atomic_read(&sess->session_stop_active)) {
   atomic_set(&sess->session_stop_active, 1);
   spin_unlock_bh(&sess->conn_lock);
   iscsit_stop_session(sess, 0, 0);
   return 0;
  }
  spin_unlock_bh(&sess->conn_lock);
  return 0;
 }
 if (!atomic_read(&sess->session_reinstatement) &&
      atomic_read(&sess->session_fall_back_to_erl0)) {
  spin_unlock_bh(&sess->conn_lock);
  iscsit_close_session(sess);

  return 0;
 } else if (atomic_read(&sess->session_logout)) {
  pr_debug("Moving to TARG_SESS_STATE_FREE.\n");
  sess->session_state = TARG_SESS_STATE_FREE;
  spin_unlock_bh(&sess->conn_lock);

  if (atomic_read(&sess->sleep_on_sess_wait_comp))
   complete(&sess->session_wait_comp);

  return 0;
 } else {
  pr_debug("Moving to TARG_SESS_STATE_FAILED.\n");
  sess->session_state = TARG_SESS_STATE_FAILED;

  if (!atomic_read(&sess->session_continuation)) {
   spin_unlock_bh(&sess->conn_lock);
   iscsit_start_time2retain_handler(sess);
  } else
   spin_unlock_bh(&sess->conn_lock);

  if (atomic_read(&sess->sleep_on_sess_wait_comp))
   complete(&sess->session_wait_comp);

  return 0;
 }
}
