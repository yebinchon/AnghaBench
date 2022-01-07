
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int session_index; struct iscsi_session* sess_ops; int se_sess; int max_cmd_sn; int creation_time; int time2retain_timer; int ttt_lock; int session_usage_lock; int cr_i_lock; int cr_a_lock; int conn_lock; int cmdsn_mutex; int session_waiting_on_uc_comp; int session_wait_comp; int reinstatement_comp; int async_msg_comp; int cr_inactive_list; int cr_active_list; int sess_ooo_cmdsn_list; int sess_conn_list; int exp_cmd_sn; int isid; int init_task_tag; } ;
struct iscsi_sess_ops {int dummy; } ;
struct iscsi_login_req {int cmdsn; int isid; int itt; int cid; } ;
struct iscsi_conn {int * sess; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int ISCSI_LOGIN_STATUS_NO_RESOURCES ;
 int ISCSI_STATUS_CLS_TARGET_ERR ;
 scalar_t__ IS_ERR (int ) ;
 int TARGET_PROT_NORMAL ;
 int atomic_set (int *,int ) ;
 int be32_to_cpu (int ) ;
 int get_jiffies_64 () ;
 int ida_alloc (int *,int ) ;
 int ida_free (int *,int) ;
 int init_completion (int *) ;
 scalar_t__ iscsi_login_set_conn_values (struct iscsi_session*,struct iscsi_conn*,int ) ;
 int iscsit_handle_time2retain_timeout ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int kfree (struct iscsi_session*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int mutex_init (int *) ;
 int pr_err (char*,...) ;
 int sess_ida ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int transport_alloc_session (int ) ;

__attribute__((used)) static int iscsi_login_zero_tsih_s1(
 struct iscsi_conn *conn,
 unsigned char *buf)
{
 struct iscsi_session *sess = ((void*)0);
 struct iscsi_login_req *pdu = (struct iscsi_login_req *)buf;
 int ret;

 sess = kzalloc(sizeof(struct iscsi_session), GFP_KERNEL);
 if (!sess) {
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
  pr_err("Could not allocate memory for session\n");
  return -ENOMEM;
 }

 if (iscsi_login_set_conn_values(sess, conn, pdu->cid))
  goto free_sess;

 sess->init_task_tag = pdu->itt;
 memcpy(&sess->isid, pdu->isid, 6);
 sess->exp_cmd_sn = be32_to_cpu(pdu->cmdsn);
 INIT_LIST_HEAD(&sess->sess_conn_list);
 INIT_LIST_HEAD(&sess->sess_ooo_cmdsn_list);
 INIT_LIST_HEAD(&sess->cr_active_list);
 INIT_LIST_HEAD(&sess->cr_inactive_list);
 init_completion(&sess->async_msg_comp);
 init_completion(&sess->reinstatement_comp);
 init_completion(&sess->session_wait_comp);
 init_completion(&sess->session_waiting_on_uc_comp);
 mutex_init(&sess->cmdsn_mutex);
 spin_lock_init(&sess->conn_lock);
 spin_lock_init(&sess->cr_a_lock);
 spin_lock_init(&sess->cr_i_lock);
 spin_lock_init(&sess->session_usage_lock);
 spin_lock_init(&sess->ttt_lock);

 timer_setup(&sess->time2retain_timer,
      iscsit_handle_time2retain_timeout, 0);

 ret = ida_alloc(&sess_ida, GFP_KERNEL);
 if (ret < 0) {
  pr_err("Session ID allocation failed %d\n", ret);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
  goto free_sess;
 }

 sess->session_index = ret;
 sess->creation_time = get_jiffies_64();




 atomic_set(&sess->max_cmd_sn, be32_to_cpu(pdu->cmdsn));

 sess->sess_ops = kzalloc(sizeof(struct iscsi_sess_ops), GFP_KERNEL);
 if (!sess->sess_ops) {
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
  pr_err("Unable to allocate memory for"
    " struct iscsi_sess_ops.\n");
  goto free_id;
 }

 sess->se_sess = transport_alloc_session(TARGET_PROT_NORMAL);
 if (IS_ERR(sess->se_sess)) {
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
    ISCSI_LOGIN_STATUS_NO_RESOURCES);
  goto free_ops;
 }

 return 0;

free_ops:
 kfree(sess->sess_ops);
free_id:
 ida_free(&sess_ida, sess->session_index);
free_sess:
 kfree(sess);
 conn->sess = ((void*)0);
 return -ENOMEM;
}
