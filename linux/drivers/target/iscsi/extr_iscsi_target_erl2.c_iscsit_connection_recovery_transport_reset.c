
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int connection_recovery; } ;


 int atomic_set (int *,int) ;
 scalar_t__ iscsit_close_connection (struct iscsi_conn*) ;

int iscsit_connection_recovery_transport_reset(struct iscsi_conn *conn)
{
 atomic_set(&conn->connection_recovery, 1);

 if (iscsit_close_connection(conn) < 0)
  return -1;

 return 0;
}
