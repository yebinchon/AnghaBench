
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct iscsi_login_rsp {int itt; void* status_detail; void* status_class; int opcode; } ;
struct iscsi_login {int login_failed; int * rsp; } ;
struct iscsi_conn {TYPE_1__* conn_transport; int login_itt; struct iscsi_login* conn_login; } ;
struct TYPE_2__ {int (* iscsit_put_login_tx ) (struct iscsi_conn*,struct iscsi_login*,int ) ;} ;


 int ISCSI_HDR_LEN ;
 int ISCSI_OP_LOGIN_RSP ;
 int iscsit_collect_login_stats (struct iscsi_conn*,void*,void*) ;
 int memset (int *,int ,int ) ;
 int stub1 (struct iscsi_conn*,struct iscsi_login*,int ) ;

int iscsit_tx_login_rsp(struct iscsi_conn *conn, u8 status_class, u8 status_detail)
{
 struct iscsi_login_rsp *hdr;
 struct iscsi_login *login = conn->conn_login;

 login->login_failed = 1;
 iscsit_collect_login_stats(conn, status_class, status_detail);

 memset(&login->rsp[0], 0, ISCSI_HDR_LEN);

 hdr = (struct iscsi_login_rsp *)&login->rsp[0];
 hdr->opcode = ISCSI_OP_LOGIN_RSP;
 hdr->status_class = status_class;
 hdr->status_detail = status_detail;
 hdr->itt = conn->login_itt;

 return conn->conn_transport->iscsit_put_login_tx(conn, login, 0);
}
