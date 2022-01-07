
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {struct iscsi_conn* conn; } ;
struct iscsi_conn {int dummy; } ;


 int EAGAIN ;
 int iscsi_sw_tcp_xmit (struct iscsi_conn*) ;
 scalar_t__ iscsi_sw_tcp_xmit_qlen (struct iscsi_conn*) ;
 int memalloc_noreclaim_restore (unsigned int) ;
 unsigned int memalloc_noreclaim_save () ;

__attribute__((used)) static int iscsi_sw_tcp_pdu_xmit(struct iscsi_task *task)
{
 struct iscsi_conn *conn = task->conn;
 unsigned int noreclaim_flag;
 int rc = 0;

 noreclaim_flag = memalloc_noreclaim_save();

 while (iscsi_sw_tcp_xmit_qlen(conn)) {
  rc = iscsi_sw_tcp_xmit(conn);
  if (rc == 0) {
   rc = -EAGAIN;
   break;
  }
  if (rc < 0)
   break;
  rc = 0;
 }

 memalloc_noreclaim_restore(noreclaim_flag);
 return rc;
}
