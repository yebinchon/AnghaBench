
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_login {int rsp_buf; int rsp; } ;
struct iscsi_conn {int dummy; } ;


 scalar_t__ iscsi_login_tx_data (struct iscsi_conn*,int ,int ,int ) ;

int iscsit_put_login_tx(struct iscsi_conn *conn, struct iscsi_login *login,
   u32 length)
{
 if (iscsi_login_tx_data(conn, login->rsp, login->rsp_buf, length) < 0)
  return -1;

 return 0;
}
