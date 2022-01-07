
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_login_rsp {int flags; } ;
struct iscsi_login_req {int flags; } ;
struct iscsi_login {int login_complete; int tsih; scalar_t__ rsp; scalar_t__ req; } ;
struct iscsi_conn {TYPE_1__* sess; } ;
struct TYPE_2__ {int tsih; } ;


 int ISCSI_FLAG_LOGIN_CURRENT_STAGE1 ;
 int ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK ;
 int ISCSI_FLAG_LOGIN_NEXT_STAGE_MASK ;
 int ISCSI_FLAG_LOGIN_TRANSIT ;
 int ISCSI_LOGIN_CURRENT_STAGE (int ) ;
 int ISCSI_LOGIN_STATUS_TARGET_ERROR ;
 int ISCSI_STATUS_CLS_TARGET_ERR ;
 int MAX_LOGIN_PDUS ;
 scalar_t__ iscsi_target_do_tx_login_io (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsi_target_handle_csg_one (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsi_target_handle_csg_zero (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsi_target_restore_sock_callbacks (struct iscsi_conn*) ;
 int iscsi_target_sk_check_close (struct iscsi_conn*) ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int iscsi_target_do_login(struct iscsi_conn *conn, struct iscsi_login *login)
{
 int pdu_count = 0;
 struct iscsi_login_req *login_req;
 struct iscsi_login_rsp *login_rsp;

 login_req = (struct iscsi_login_req *) login->req;
 login_rsp = (struct iscsi_login_rsp *) login->rsp;

 while (1) {
  if (++pdu_count > MAX_LOGIN_PDUS) {
   pr_err("MAX_LOGIN_PDUS count reached.\n");
   iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_TARGET_ERR,
     ISCSI_LOGIN_STATUS_TARGET_ERROR);
   return -1;
  }

  switch (ISCSI_LOGIN_CURRENT_STAGE(login_req->flags)) {
  case 0:
   login_rsp->flags &= ~ISCSI_FLAG_LOGIN_CURRENT_STAGE_MASK;
   if (iscsi_target_handle_csg_zero(conn, login) < 0)
    return -1;
   break;
  case 1:
   login_rsp->flags |= ISCSI_FLAG_LOGIN_CURRENT_STAGE1;
   if (iscsi_target_handle_csg_one(conn, login) < 0)
    return -1;
   if (login_rsp->flags & ISCSI_FLAG_LOGIN_TRANSIT) {






    if (iscsi_target_sk_check_close(conn))
     return -1;

    login->tsih = conn->sess->tsih;
    login->login_complete = 1;
    iscsi_target_restore_sock_callbacks(conn);
    if (iscsi_target_do_tx_login_io(conn,
      login) < 0)
     return -1;
    return 1;
   }
   break;
  default:
   pr_err("Illegal CSG: %d received from"
    " Initiator, protocol error.\n",
    ISCSI_LOGIN_CURRENT_STAGE(login_req->flags));
   break;
  }

  if (iscsi_target_do_tx_login_io(conn, login) < 0)
   return -1;

  if (login_rsp->flags & ISCSI_FLAG_LOGIN_TRANSIT) {
   login_rsp->flags &= ~ISCSI_FLAG_LOGIN_TRANSIT;
   login_rsp->flags &= ~ISCSI_FLAG_LOGIN_NEXT_STAGE_MASK;
  }
  break;
 }

 return 0;
}
