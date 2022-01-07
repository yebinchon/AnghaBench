
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_login_req {int opcode; int flags; int itt; int isid; int min_version; int max_version; int dlength; } ;
struct iscsi_login {int current_stage; int init_task_tag; int isid; int version_min; int version_max; scalar_t__ req; } ;
struct iscsi_conn {int dummy; } ;


 int ISCSI_FLAG_LOGIN_CONTINUE ;
 int ISCSI_FLAG_LOGIN_TRANSIT ;
 int ISCSI_LOGIN_CURRENT_STAGE (int) ;
 int ISCSI_LOGIN_NEXT_STAGE (int) ;
 int ISCSI_LOGIN_STATUS_INIT_ERR ;
 int ISCSI_OPCODE_MASK ;

 int ISCSI_STATUS_CLS_INITIATOR_ERR ;
 int MAX_KEY_VALUE_PAIRS ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int ntoh24 (int ) ;
 int pr_err (char*,...) ;

int iscsi_target_check_login_request(
 struct iscsi_conn *conn,
 struct iscsi_login *login)
{
 int req_csg, req_nsg;
 u32 payload_length;
 struct iscsi_login_req *login_req;

 login_req = (struct iscsi_login_req *) login->req;
 payload_length = ntoh24(login_req->dlength);

 switch (login_req->opcode & ISCSI_OPCODE_MASK) {
 case 128:
  break;
 default:
  pr_err("Received unknown opcode 0x%02x.\n",
    login_req->opcode & ISCSI_OPCODE_MASK);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if ((login_req->flags & ISCSI_FLAG_LOGIN_CONTINUE) &&
     (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT)) {
  pr_err("Login request has both ISCSI_FLAG_LOGIN_CONTINUE"
   " and ISCSI_FLAG_LOGIN_TRANSIT set, protocol error.\n");
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 req_csg = ISCSI_LOGIN_CURRENT_STAGE(login_req->flags);
 req_nsg = ISCSI_LOGIN_NEXT_STAGE(login_req->flags);

 if (req_csg != login->current_stage) {
  pr_err("Initiator unexpectedly changed login stage"
   " from %d to %d, login failed.\n", login->current_stage,
   req_csg);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if ((req_nsg == 2) || (req_csg >= 2) ||
    ((login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT) &&
     (req_nsg <= req_csg))) {
  pr_err("Illegal login_req->flags Combination, CSG: %d,"
   " NSG: %d, ISCSI_FLAG_LOGIN_TRANSIT: %d.\n", req_csg,
   req_nsg, (login_req->flags & ISCSI_FLAG_LOGIN_TRANSIT));
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if ((login_req->max_version != login->version_max) ||
     (login_req->min_version != login->version_min)) {
  pr_err("Login request changed Version Max/Nin"
   " unexpectedly to 0x%02x/0x%02x, protocol error\n",
   login_req->max_version, login_req->min_version);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if (memcmp(login_req->isid, login->isid, 6) != 0) {
  pr_err("Login request changed ISID unexpectedly,"
    " protocol error.\n");
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if (login_req->itt != login->init_task_tag) {
  pr_err("Login request changed ITT unexpectedly to"
   " 0x%08x, protocol error.\n", login_req->itt);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_INIT_ERR);
  return -1;
 }

 if (payload_length > MAX_KEY_VALUE_PAIRS) {
  pr_err("Login request payload exceeds default"
   " MaxRecvDataSegmentLength: %u, protocol error.\n",
    MAX_KEY_VALUE_PAIRS);
  return -1;
 }

 return 0;
}
