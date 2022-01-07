
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int conn_usage_lock; int conn_waiting_on_uc_comp; scalar_t__ conn_waiting_on_uc; int conn_usage_count; } ;


 int complete (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_dec_conn_usage_count(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->conn_usage_lock);
 conn->conn_usage_count--;

 if (!conn->conn_usage_count && conn->conn_waiting_on_uc)
  complete(&conn->conn_waiting_on_uc_comp);

 spin_unlock_bh(&conn->conn_usage_lock);
}
