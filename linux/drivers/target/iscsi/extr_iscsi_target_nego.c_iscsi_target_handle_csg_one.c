
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iscsi_login_rsp {int flags; } ;
struct iscsi_login_req {int flags; int dlength; } ;
struct iscsi_login {int auth_complete; int rsp_length; int rsp_buf; scalar_t__ first_request; int req_buf; scalar_t__ rsp; scalar_t__ req; } ;
struct iscsi_conn {int param_list; TYPE_2__* tpg; } ;
struct TYPE_3__ {scalar_t__ authentication; int login_keys_workaround; } ;
struct TYPE_4__ {TYPE_1__ tpg_attrib; } ;


 int ISCSI_FLAG_LOGIN_NEXT_STAGE3 ;
 int ISCSI_FLAG_LOGIN_TRANSIT ;
 int ISCSI_LOGIN_STATUS_AUTH_FAILED ;
 int ISCSI_LOGIN_STATUS_INIT_ERR ;
 int ISCSI_STATUS_CLS_INITIATOR_ERR ;
 int PHASE_DECLARATIVE ;
 int PHASE_OPERATIONAL ;
 int SENDER_INITIATOR ;
 int SENDER_RECEIVER ;
 int SENDER_TARGET ;
 int iscsi_check_negotiated_keys (int ) ;
 int iscsi_decode_text_input (int,int,int ,int ,struct iscsi_conn*) ;
 int iscsi_encode_text_output (int,int ,int ,int *,int ,int ) ;
 scalar_t__ iscsi_target_check_first_request (struct iscsi_conn*,struct iscsi_login*) ;
 scalar_t__ iscsi_target_check_for_existing_instances (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int ntoh24 (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int iscsi_target_handle_csg_one(struct iscsi_conn *conn, struct iscsi_login *login)
{
 int ret;
 u32 payload_length;
 struct iscsi_login_req *login_req;
 struct iscsi_login_rsp *login_rsp;

 login_req = (struct iscsi_login_req *) login->req;
 login_rsp = (struct iscsi_login_rsp *) login->rsp;
 payload_length = ntoh24(login_req->dlength);

 ret = iscsi_decode_text_input(
   PHASE_OPERATIONAL|PHASE_DECLARATIVE,
   SENDER_INITIATOR|SENDER_RECEIVER,
   login->req_buf,
   payload_length,
   conn);
 if (ret < 0) {
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if (login->first_request)
  if (iscsi_target_check_first_request(conn, login) < 0)
   return -1;

 if (iscsi_target_check_for_existing_instances(conn, login) < 0)
  return -1;

 ret = iscsi_encode_text_output(
   PHASE_OPERATIONAL|PHASE_DECLARATIVE,
   SENDER_TARGET,
   login->rsp_buf,
   &login->rsp_length,
   conn->param_list,
   conn->tpg->tpg_attrib.login_keys_workaround);
 if (ret < 0) {
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if (!login->auth_complete &&
      conn->tpg->tpg_attrib.authentication) {
  pr_err("Initiator is requesting CSG: 1, has not been"
    " successfully authenticated, and the Target is"
   " enforcing iSCSI Authentication, login failed.\n");
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_AUTH_FAILED);
  return -1;
 }

 if (!iscsi_check_negotiated_keys(conn->param_list))
  if ((login_req->flags & ISCSI_FLAG_LOGIN_NEXT_STAGE3) &&
      (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT))
   login_rsp->flags |= ISCSI_FLAG_LOGIN_NEXT_STAGE3 |
         ISCSI_FLAG_LOGIN_TRANSIT;

 return 0;
}
