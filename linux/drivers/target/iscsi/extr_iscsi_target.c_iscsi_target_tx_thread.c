
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {scalar_t__ conn_state; int queues_wq; } ;


 int ECONNRESET ;
 int SIGINT ;
 scalar_t__ TARG_CONN_STATE_IN_LOGIN ;
 int allow_signal (int ) ;
 int current ;
 int iscsit_conn_all_queues_empty (struct iscsi_conn*) ;
 int iscsit_handle_immediate_queue (struct iscsi_conn*) ;
 int iscsit_handle_response_queue (struct iscsi_conn*) ;
 int iscsit_take_action_for_connection_exit (struct iscsi_conn*,int*) ;
 int iscsit_thread_check_cpumask (struct iscsi_conn*,int ,int) ;
 int kthread_should_stop () ;
 int msleep (int) ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible (int ,int) ;

int iscsi_target_tx_thread(void *arg)
{
 int ret = 0;
 struct iscsi_conn *conn = arg;
 bool conn_freed = 0;





 allow_signal(SIGINT);

 while (!kthread_should_stop()) {




  iscsit_thread_check_cpumask(conn, current, 1);

  wait_event_interruptible(conn->queues_wq,
      !iscsit_conn_all_queues_empty(conn));

  if (signal_pending(current))
   goto transport_err;

get_immediate:
  ret = iscsit_handle_immediate_queue(conn);
  if (ret < 0)
   goto transport_err;

  ret = iscsit_handle_response_queue(conn);
  if (ret == 1) {
   goto get_immediate;
  } else if (ret == -ECONNRESET) {
   conn_freed = 1;
   goto out;
  } else if (ret < 0) {
   goto transport_err;
  }
 }

transport_err:





 if (conn->conn_state != TARG_CONN_STATE_IN_LOGIN)
  iscsit_take_action_for_connection_exit(conn, &conn_freed);
out:
 if (!conn_freed) {
  while (!kthread_should_stop()) {
   msleep(100);
  }
 }
 return 0;
}
