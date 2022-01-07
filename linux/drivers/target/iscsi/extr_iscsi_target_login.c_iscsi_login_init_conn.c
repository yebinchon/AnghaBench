
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login {int first_request; struct iscsi_login* req_buf; void* rsp_buf; struct iscsi_conn* conn; } ;
struct iscsi_conn {struct iscsi_login* conn_login; struct iscsi_login* login; } ;


 int GFP_KERNEL ;
 int MAX_KEY_VALUE_PAIRS ;
 int kfree (struct iscsi_login*) ;
 void* kzalloc (int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static struct iscsi_login *iscsi_login_init_conn(struct iscsi_conn *conn)
{
 struct iscsi_login *login;

 login = kzalloc(sizeof(struct iscsi_login), GFP_KERNEL);
 if (!login) {
  pr_err("Unable to allocate memory for struct iscsi_login.\n");
  return ((void*)0);
 }
 conn->login = login;
 login->conn = conn;
 login->first_request = 1;

 login->req_buf = kzalloc(MAX_KEY_VALUE_PAIRS, GFP_KERNEL);
 if (!login->req_buf) {
  pr_err("Unable to allocate memory for response buffer.\n");
  goto out_login;
 }

 login->rsp_buf = kzalloc(MAX_KEY_VALUE_PAIRS, GFP_KERNEL);
 if (!login->rsp_buf) {
  pr_err("Unable to allocate memory for request buffer.\n");
  goto out_req_buf;
 }

 conn->conn_login = login;

 return login;

out_req_buf:
 kfree(login->req_buf);
out_login:
 kfree(login);
 return ((void*)0);
}
