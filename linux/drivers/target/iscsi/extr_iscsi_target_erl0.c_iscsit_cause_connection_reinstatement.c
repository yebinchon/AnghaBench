
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int conn_post_wait_comp; int conn_wait_comp; int state_lock; int sleep_on_conn_wait_comp; int connection_reinstatement; scalar_t__ rx_thread; scalar_t__ rx_thread_active; scalar_t__ tx_thread; scalar_t__ tx_thread_active; int transport_failed; int connection_exit; } ;


 int SIGINT ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int complete (int *) ;
 int send_sig (int ,scalar_t__,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;

void iscsit_cause_connection_reinstatement(struct iscsi_conn *conn, int sleep)
{
 spin_lock_bh(&conn->state_lock);
 if (atomic_read(&conn->connection_exit)) {
  spin_unlock_bh(&conn->state_lock);
  return;
 }

 if (atomic_read(&conn->transport_failed)) {
  spin_unlock_bh(&conn->state_lock);
  return;
 }

 if (atomic_read(&conn->connection_reinstatement)) {
  spin_unlock_bh(&conn->state_lock);
  return;
 }

 if (conn->tx_thread && conn->tx_thread_active)
  send_sig(SIGINT, conn->tx_thread, 1);
 if (conn->rx_thread && conn->rx_thread_active)
  send_sig(SIGINT, conn->rx_thread, 1);

 atomic_set(&conn->connection_reinstatement, 1);
 if (!sleep) {
  spin_unlock_bh(&conn->state_lock);
  return;
 }

 atomic_set(&conn->sleep_on_conn_wait_comp, 1);
 spin_unlock_bh(&conn->state_lock);

 wait_for_completion(&conn->conn_wait_comp);
 complete(&conn->conn_post_wait_comp);
}
