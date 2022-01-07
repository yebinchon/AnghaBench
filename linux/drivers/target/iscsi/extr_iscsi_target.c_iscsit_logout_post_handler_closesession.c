
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_session {int dummy; } ;
struct iscsi_conn {int conn_logout_comp; int conn_logout_remove; int tx_thread_active; TYPE_1__* conn_transport; struct iscsi_session* sess; } ;
struct TYPE_2__ {int rdma_shutdown; } ;


 int atomic_set (int *,int ) ;
 int cmpxchg (int *,int,int) ;
 int complete (int *) ;
 int iscsit_close_session (struct iscsi_session*) ;
 int iscsit_dec_conn_usage_count (struct iscsi_conn*) ;
 int iscsit_dec_session_usage_count (struct iscsi_session*) ;
 int iscsit_stop_session (struct iscsi_session*,int,int) ;

__attribute__((used)) static void iscsit_logout_post_handler_closesession(
 struct iscsi_conn *conn)
{
 struct iscsi_session *sess = conn->sess;
 int sleep = 1;
 if (!conn->conn_transport->rdma_shutdown) {
  sleep = cmpxchg(&conn->tx_thread_active, 1, 0);
  if (!sleep)
   return;
 }

 atomic_set(&conn->conn_logout_remove, 0);
 complete(&conn->conn_logout_comp);

 iscsit_dec_conn_usage_count(conn);
 iscsit_stop_session(sess, sleep, sleep);
 iscsit_dec_session_usage_count(sess);
 iscsit_close_session(sess);
}
