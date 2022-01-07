
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_login_req {int tsih; int cid; int exp_statsn; int itt; int cmdsn; int isid; int max_version; int min_version; int flags; int dlength; } ;
struct iscsi_login {int leading_connection; scalar_t__ req_buf; void* tsih; void* cid; void* initial_exp_statsn; int init_task_tag; void* cmd_sn; int isid; int version_max; int version_min; int current_stage; scalar_t__ req; scalar_t__ first_request; } ;
struct iscsi_conn {int dummy; } ;


 int ISCSI_HDR_LEN ;
 int ISCSI_LOGIN_CURRENT_STAGE (int ) ;
 int MAX_KEY_VALUE_PAIRS ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ iscsi_login_rx_data (struct iscsi_conn*,scalar_t__,int) ;
 scalar_t__ iscsi_target_check_login_request (struct iscsi_conn*,struct iscsi_login*) ;
 int memcpy (int ,int ,int) ;
 int memset (scalar_t__,int ,int ) ;
 int ntoh24 (int ) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int) ;

int iscsit_get_login_rx(struct iscsi_conn *conn, struct iscsi_login *login)
{
 struct iscsi_login_req *login_req;
 u32 padding = 0, payload_length;

 if (iscsi_login_rx_data(conn, login->req, ISCSI_HDR_LEN) < 0)
  return -1;

 login_req = (struct iscsi_login_req *)login->req;
 payload_length = ntoh24(login_req->dlength);
 padding = ((-payload_length) & 3);

 pr_debug("Got Login Command, Flags 0x%02x, ITT: 0x%08x,"
  " CmdSN: 0x%08x, ExpStatSN: 0x%08x, CID: %hu, Length: %u\n",
  login_req->flags, login_req->itt, login_req->cmdsn,
  login_req->exp_statsn, login_req->cid, payload_length);




 if (login->first_request) {
  login_req = (struct iscsi_login_req *)login->req;
  login->leading_connection = (!login_req->tsih) ? 1 : 0;
  login->current_stage = ISCSI_LOGIN_CURRENT_STAGE(login_req->flags);
  login->version_min = login_req->min_version;
  login->version_max = login_req->max_version;
  memcpy(login->isid, login_req->isid, 6);
  login->cmd_sn = be32_to_cpu(login_req->cmdsn);
  login->init_task_tag = login_req->itt;
  login->initial_exp_statsn = be32_to_cpu(login_req->exp_statsn);
  login->cid = be16_to_cpu(login_req->cid);
  login->tsih = be16_to_cpu(login_req->tsih);
 }

 if (iscsi_target_check_login_request(conn, login) < 0)
  return -1;

 memset(login->req_buf, 0, MAX_KEY_VALUE_PAIRS);
 if (iscsi_login_rx_data(conn, login->req_buf,
    payload_length + padding) < 0)
  return -1;

 return 0;
}
