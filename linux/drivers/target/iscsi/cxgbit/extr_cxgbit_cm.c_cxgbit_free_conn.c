
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int context; } ;


 int __cxgbit_free_conn (int ) ;

void cxgbit_free_conn(struct iscsi_conn *conn)
{
 __cxgbit_free_conn(conn->context);
}
