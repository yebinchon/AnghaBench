
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int conn_post_wait_comp; int conn_wait_rcfr_comp; scalar_t__ rx_thread; scalar_t__ rx_thread_active; scalar_t__ tx_thread; scalar_t__ tx_thread_active; int state_lock; int transport_failed; int connection_exit; } ;


 int SIGINT ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 int send_sig (int ,scalar_t__,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;

void iscsit_connection_reinstatement_rcfr(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->state_lock);
 if (atomic_read(&conn->connection_exit)) {
  spin_unlock_bh(&conn->state_lock);
  goto sleep;
 }

 if (atomic_read(&conn->transport_failed)) {
  spin_unlock_bh(&conn->state_lock);
  goto sleep;
 }
 spin_unlock_bh(&conn->state_lock);

 if (conn->tx_thread && conn->tx_thread_active)
  send_sig(SIGINT, conn->tx_thread, 1);
 if (conn->rx_thread && conn->rx_thread_active)
  send_sig(SIGINT, conn->rx_thread, 1);

sleep:
 wait_for_completion(&conn->conn_wait_rcfr_comp);
 complete(&conn->conn_post_wait_comp);
}
