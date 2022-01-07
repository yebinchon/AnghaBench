
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct se_portal_group {int session_lock; } ;
struct iscsi_np {int dummy; } ;
struct iscsi_conn {TYPE_2__* conn_transport; int * sock; int * param_list; scalar_t__ conn_rx_hash; scalar_t__ conn_tx_hash; TYPE_3__* sess; TYPE_1__* tpg; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_8__ {scalar_t__ session_state; int conn_lock; int session_continuation; struct TYPE_8__* sess_ops; int session_index; int se_sess; } ;
struct TYPE_7__ {int (* iscsit_free_conn ) (struct iscsi_conn*) ;int (* iscsit_wait_conn ) (struct iscsi_conn*) ;} ;
struct TYPE_6__ {struct se_portal_group tpg_se_tpg; } ;


 int ISCSI_LOGIN_STATUS_INIT_ERR ;
 int ISCSI_STATUS_CLS_INITIATOR_ERR ;
 scalar_t__ TARG_SESS_STATE_FAILED ;
 int ahash_request_free (scalar_t__) ;
 int atomic_set (int *,int ) ;
 struct crypto_ahash* crypto_ahash_reqtfm (scalar_t__) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int ida_free (int *,int ) ;
 int iscsi_release_param_list (int *) ;
 int iscsi_stop_login_thread_timer (struct iscsi_np*) ;
 int iscsi_target_nego_release (struct iscsi_conn*) ;
 int iscsit_collect_login_stats (struct iscsi_conn*,int ,int ) ;
 int iscsit_dec_session_usage_count (TYPE_3__*) ;
 int iscsit_free_conn (struct iscsi_conn*) ;
 int iscsit_start_time2retain_handler (TYPE_3__*) ;
 int kfree (TYPE_3__*) ;
 int pr_err (char*) ;
 int sess_ida ;
 int sock_release (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_conn*) ;
 int stub2 (struct iscsi_conn*) ;
 int transport_free_session (int ) ;

void iscsi_target_login_sess_out(struct iscsi_conn *conn,
  struct iscsi_np *np, bool zero_tsih, bool new_sess)
{
 if (!new_sess)
  goto old_sess_out;

 pr_err("iSCSI Login negotiation failed.\n");
 iscsit_collect_login_stats(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
       ISCSI_LOGIN_STATUS_INIT_ERR);
 if (!zero_tsih || !conn->sess)
  goto old_sess_out;

 transport_free_session(conn->sess->se_sess);
 ida_free(&sess_ida, conn->sess->session_index);
 kfree(conn->sess->sess_ops);
 kfree(conn->sess);
 conn->sess = ((void*)0);

old_sess_out:
 iscsi_stop_login_thread_timer(np);




 if (!zero_tsih && conn->sess) {
  spin_lock_bh(&conn->sess->conn_lock);
  if (conn->sess->session_state == TARG_SESS_STATE_FAILED) {
   struct se_portal_group *se_tpg =
     &conn->tpg->tpg_se_tpg;

   atomic_set(&conn->sess->session_continuation, 0);
   spin_unlock_bh(&conn->sess->conn_lock);
   spin_lock_bh(&se_tpg->session_lock);
   iscsit_start_time2retain_handler(conn->sess);
   spin_unlock_bh(&se_tpg->session_lock);
  } else
   spin_unlock_bh(&conn->sess->conn_lock);
  iscsit_dec_session_usage_count(conn->sess);
 }

 ahash_request_free(conn->conn_tx_hash);
 if (conn->conn_rx_hash) {
  struct crypto_ahash *tfm;

  tfm = crypto_ahash_reqtfm(conn->conn_rx_hash);
  ahash_request_free(conn->conn_rx_hash);
  crypto_free_ahash(tfm);
 }

 if (conn->param_list) {
  iscsi_release_param_list(conn->param_list);
  conn->param_list = ((void*)0);
 }
 iscsi_target_nego_release(conn);

 if (conn->sock) {
  sock_release(conn->sock);
  conn->sock = ((void*)0);
 }

 if (conn->conn_transport->iscsit_wait_conn)
  conn->conn_transport->iscsit_wait_conn(conn);

 if (conn->conn_transport->iscsit_free_conn)
  conn->conn_transport->iscsit_free_conn(conn);

 iscsit_free_conn(conn);
}
