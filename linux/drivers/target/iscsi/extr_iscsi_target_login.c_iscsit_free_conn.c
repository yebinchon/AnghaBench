
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int conn_transport; struct iscsi_conn* conn_ops; int conn_cpumask; } ;


 int free_cpumask_var (int ) ;
 int iscsit_put_transport (int ) ;
 int kfree (struct iscsi_conn*) ;

void iscsit_free_conn(struct iscsi_conn *conn)
{
 free_cpumask_var(conn->conn_cpumask);
 kfree(conn->conn_ops);
 iscsit_put_transport(conn->conn_transport);
 kfree(conn);
}
