
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login {struct iscsi_login* rsp_buf; struct iscsi_login* req_buf; } ;
struct iscsi_conn {struct iscsi_login* conn_login; } ;


 int kfree (struct iscsi_login*) ;

void iscsi_target_nego_release(struct iscsi_conn *conn)
{
 struct iscsi_login *login = conn->conn_login;

 if (!login)
  return;

 kfree(login->req_buf);
 kfree(login->rsp_buf);
 kfree(login);

 conn->conn_login = ((void*)0);
}
