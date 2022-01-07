
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {scalar_t__ conn_usage_count; int conn_waiting_on_uc; int conn_usage_lock; int conn_waiting_on_uc_comp; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;

void iscsit_check_conn_usage_count(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->conn_usage_lock);
 if (conn->conn_usage_count != 0) {
  conn->conn_waiting_on_uc = 1;
  spin_unlock_bh(&conn->conn_usage_lock);

  wait_for_completion(&conn->conn_waiting_on_uc_comp);
  return;
 }
 spin_unlock_bh(&conn->conn_usage_lock);
}
