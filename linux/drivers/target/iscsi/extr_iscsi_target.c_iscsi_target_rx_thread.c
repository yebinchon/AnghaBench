
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {int transport_failed; TYPE_1__* conn_transport; int rx_login_comp; } ;
struct TYPE_2__ {int (* iscsit_get_rx_pdu ) (struct iscsi_conn*) ;} ;


 int SIGINT ;
 int allow_signal (int ) ;
 int atomic_set (int *,int) ;
 int current ;
 scalar_t__ iscsi_target_check_conn_state (struct iscsi_conn*) ;
 int iscsit_take_action_for_connection_exit (struct iscsi_conn*,int*) ;
 int kthread_should_stop () ;
 int msleep (int) ;
 int signal_pending (int ) ;
 int stub1 (struct iscsi_conn*) ;
 int wait_for_completion_interruptible (int *) ;

int iscsi_target_rx_thread(void *arg)
{
 int rc;
 struct iscsi_conn *conn = arg;
 bool conn_freed = 0;





 allow_signal(SIGINT);




 rc = wait_for_completion_interruptible(&conn->rx_login_comp);
 if (rc < 0 || iscsi_target_check_conn_state(conn))
  goto out;

 if (!conn->conn_transport->iscsit_get_rx_pdu)
  return 0;

 conn->conn_transport->iscsit_get_rx_pdu(conn);

 if (!signal_pending(current))
  atomic_set(&conn->transport_failed, 1);
 iscsit_take_action_for_connection_exit(conn, &conn_freed);

out:
 if (!conn_freed) {
  while (!kthread_should_stop()) {
   msleep(100);
  }
 }

 return 0;
}
