
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_param {int value; } ;
struct iscsi_login_rsp {int flags; } ;
struct iscsi_login_req {int flags; int dlength; } ;
struct iscsi_login {int current_stage; scalar_t__ auth_complete; int rsp_length; int rsp_buf; scalar_t__ first_request; int req_buf; scalar_t__ rsp; scalar_t__ req; } ;
struct iscsi_conn {TYPE_2__* tpg; int param_list; } ;
struct TYPE_3__ {scalar_t__ authentication; int login_keys_workaround; } ;
struct TYPE_4__ {TYPE_1__ tpg_attrib; } ;


 int AUTHMETHOD ;
 int ISCSI_FLAG_LOGIN_NEXT_STAGE1 ;
 int ISCSI_FLAG_LOGIN_TRANSIT ;
 int ISCSI_LOGIN_STATUS_AUTH_FAILED ;
 int ISCSI_LOGIN_STATUS_INIT_ERR ;
 int ISCSI_STATUS_CLS_INITIATOR_ERR ;
 int NONE ;
 int PHASE_DECLARATIVE ;
 int PHASE_SECURITY ;
 int SENDER_INITIATOR ;
 int SENDER_RECEIVER ;
 int SENDER_TARGET ;
 int iscsi_check_negotiated_keys (int ) ;
 int iscsi_decode_text_input (int,int,int ,int ,struct iscsi_conn*) ;
 int iscsi_encode_text_output (int,int ,int ,int *,int ,int ) ;
 struct iscsi_param* iscsi_find_param_from_key (int ,int ) ;
 scalar_t__ iscsi_target_check_first_request (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsi_target_do_authentication (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int ntoh24 (int ) ;
 int pr_err (char*,...) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static int iscsi_target_handle_csg_zero(
 struct iscsi_conn *conn,
 struct iscsi_login *login)
{
 int ret;
 u32 payload_length;
 struct iscsi_param *param;
 struct iscsi_login_req *login_req;
 struct iscsi_login_rsp *login_rsp;

 login_req = (struct iscsi_login_req *) login->req;
 login_rsp = (struct iscsi_login_rsp *) login->rsp;
 payload_length = ntoh24(login_req->dlength);

 param = iscsi_find_param_from_key(AUTHMETHOD, conn->param_list);
 if (!param)
  return -1;

 ret = iscsi_decode_text_input(
   PHASE_SECURITY|PHASE_DECLARATIVE,
   SENDER_INITIATOR|SENDER_RECEIVER,
   login->req_buf,
   payload_length,
   conn);
 if (ret < 0)
  return -1;

 if (ret > 0) {
  if (login->auth_complete) {
   pr_err("Initiator has already been"
    " successfully authenticated, but is still"
    " sending %s keys.\n", param->value);
   iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
     ISCSI_LOGIN_STATUS_INIT_ERR);
   return -1;
  }

  goto do_auth;
 } else if (!payload_length) {
  pr_err("Initiator sent zero length security payload,"
         " login failed\n");
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
        ISCSI_LOGIN_STATUS_AUTH_FAILED);
  return -1;
 }

 if (login->first_request)
  if (iscsi_target_check_first_request(conn, login) < 0)
   return -1;

 ret = iscsi_encode_text_output(
   PHASE_SECURITY|PHASE_DECLARATIVE,
   SENDER_TARGET,
   login->rsp_buf,
   &login->rsp_length,
   conn->param_list,
   conn->tpg->tpg_attrib.login_keys_workaround);
 if (ret < 0)
  return -1;

 if (!iscsi_check_negotiated_keys(conn->param_list)) {
  if (conn->tpg->tpg_attrib.authentication &&
      !strncmp(param->value, NONE, 4)) {
   pr_err("Initiator sent AuthMethod=None but"
    " Target is enforcing iSCSI Authentication,"
     " login failed.\n");
   iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
     ISCSI_LOGIN_STATUS_AUTH_FAILED);
   return -1;
  }

  if (conn->tpg->tpg_attrib.authentication &&
      !login->auth_complete)
   return 0;

  if (strncmp(param->value, NONE, 4) && !login->auth_complete)
   return 0;

  if ((login_req->flags & ISCSI_FLAG_LOGIN_NEXT_STAGE1) &&
      (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT)) {
   login_rsp->flags |= ISCSI_FLAG_LOGIN_NEXT_STAGE1 |
         ISCSI_FLAG_LOGIN_TRANSIT;
   login->current_stage = 1;
  }
 }

 return 0;
do_auth:
 return iscsi_target_do_authentication(conn, login);
}
