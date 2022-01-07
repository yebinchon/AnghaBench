
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int recv_timeout; int ping_timeout; scalar_t__ last_recv; scalar_t__ ping_task; } ;


 int HZ ;
 int jiffies ;
 scalar_t__ time_before_eq (scalar_t__,int ) ;

__attribute__((used)) static int iscsi_has_ping_timed_out(struct iscsi_conn *conn)
{
 if (conn->ping_task &&
     time_before_eq(conn->last_recv + (conn->recv_timeout * HZ) +
      (conn->ping_timeout * HZ), jiffies))
  return 1;
 else
  return 0;
}
