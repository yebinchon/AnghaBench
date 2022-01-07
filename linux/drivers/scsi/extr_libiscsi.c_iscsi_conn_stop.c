
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_conn {struct iscsi_session* session; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int KERN_ERR ;


 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,int) ;
 int iscsi_start_session_recovery (struct iscsi_session*,struct iscsi_conn*,int) ;

void iscsi_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_session *session = conn->session;

 switch (flag) {
 case 129:
 case 128:
  iscsi_start_session_recovery(session, conn, flag);
  break;
 default:
  iscsi_conn_printk(KERN_ERR, conn,
      "invalid stop flag %d\n", flag);
 }
}
