
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_np {int np_transport; } ;
struct iscsi_conn_ops {int dummy; } ;
struct iscsi_conn {int conn_transport; struct iscsi_conn* conn_ops; int conn_cpumask; int nopin_timer; int nopin_response_timer; int state_lock; int response_queue_lock; int nopin_timer_lock; int immed_queue_lock; int conn_usage_lock; int cmd_lock; int rx_login_comp; int tx_half_close_comp; int rx_half_close_comp; int conn_logout_comp; int conn_waiting_on_uc_comp; int conn_wait_rcfr_comp; int conn_wait_comp; int conn_post_wait_comp; int response_queue_list; int immed_queue_list; int conn_cmd_list; int conn_list; int queues_wq; int conn_state; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TARG_CONN_STATE_FREE ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ iscsit_conn_set_transport (struct iscsi_conn*,int ) ;
 int iscsit_handle_nopin_response_timeout ;
 int iscsit_handle_nopin_timeout ;
 int iscsit_put_transport (int ) ;
 int kfree (struct iscsi_conn*) ;
 void* kzalloc (int,int ) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static struct iscsi_conn *iscsit_alloc_conn(struct iscsi_np *np)
{
 struct iscsi_conn *conn;

 conn = kzalloc(sizeof(struct iscsi_conn), GFP_KERNEL);
 if (!conn) {
  pr_err("Could not allocate memory for new connection\n");
  return ((void*)0);
 }
 pr_debug("Moving to TARG_CONN_STATE_FREE.\n");
 conn->conn_state = TARG_CONN_STATE_FREE;

 init_waitqueue_head(&conn->queues_wq);
 INIT_LIST_HEAD(&conn->conn_list);
 INIT_LIST_HEAD(&conn->conn_cmd_list);
 INIT_LIST_HEAD(&conn->immed_queue_list);
 INIT_LIST_HEAD(&conn->response_queue_list);
 init_completion(&conn->conn_post_wait_comp);
 init_completion(&conn->conn_wait_comp);
 init_completion(&conn->conn_wait_rcfr_comp);
 init_completion(&conn->conn_waiting_on_uc_comp);
 init_completion(&conn->conn_logout_comp);
 init_completion(&conn->rx_half_close_comp);
 init_completion(&conn->tx_half_close_comp);
 init_completion(&conn->rx_login_comp);
 spin_lock_init(&conn->cmd_lock);
 spin_lock_init(&conn->conn_usage_lock);
 spin_lock_init(&conn->immed_queue_lock);
 spin_lock_init(&conn->nopin_timer_lock);
 spin_lock_init(&conn->response_queue_lock);
 spin_lock_init(&conn->state_lock);

 timer_setup(&conn->nopin_response_timer,
      iscsit_handle_nopin_response_timeout, 0);
 timer_setup(&conn->nopin_timer, iscsit_handle_nopin_timeout, 0);

 if (iscsit_conn_set_transport(conn, np->np_transport) < 0)
  goto free_conn;

 conn->conn_ops = kzalloc(sizeof(struct iscsi_conn_ops), GFP_KERNEL);
 if (!conn->conn_ops) {
  pr_err("Unable to allocate memory for struct iscsi_conn_ops.\n");
  goto put_transport;
 }

 if (!zalloc_cpumask_var(&conn->conn_cpumask, GFP_KERNEL)) {
  pr_err("Unable to allocate conn->conn_cpumask\n");
  goto free_conn_ops;
 }

 return conn;

free_conn_ops:
 kfree(conn->conn_ops);
put_transport:
 iscsit_put_transport(conn->conn_transport);
free_conn:
 kfree(conn);
 return ((void*)0);
}
