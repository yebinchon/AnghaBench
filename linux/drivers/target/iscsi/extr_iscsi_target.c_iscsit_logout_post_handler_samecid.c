
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_conn {int conn_logout_comp; int conn_logout_remove; int tx_thread_active; TYPE_1__* conn_transport; } ;
struct TYPE_2__ {int rdma_shutdown; } ;


 int atomic_set (int *,int ) ;
 int cmpxchg (int *,int,int) ;
 int complete (int *) ;
 int iscsit_cause_connection_reinstatement (struct iscsi_conn*,int) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;

__attribute__((used)) static void iscsit_logout_post_handler_samecid(
 struct iscsi_conn *conn)
{
 int sleep = 1;

 if (!conn->conn_transport->rdma_shutdown) {
  sleep = cmpxchg(&conn->tx_thread_active, 1, 0);
  if (!sleep)
   return;
 }

 atomic_set(&conn->conn_logout_remove, 0);
 complete(&conn->conn_logout_comp);

 iscsit_cause_connection_reinstatement(conn, sleep);
 iscsit_dec_conn_usage_count(conn);
}
