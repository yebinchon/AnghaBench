
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int conn_usage_lock; int conn_usage_count; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsit_inc_conn_usage_count(struct iscsi_conn *conn)
{
 spin_lock_bh(&conn->conn_usage_lock);
 conn->conn_usage_count++;
 spin_unlock_bh(&conn->conn_usage_lock);
}
