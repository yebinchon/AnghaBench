
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login_req {int tsih; int cid; int exp_statsn; int itt; int cmdsn; int isid; int max_version; int min_version; int flags; } ;
struct iscsi_login {int leading_connection; int req_buf; void* tsih; void* cid; void* initial_exp_statsn; int init_task_tag; void* cmd_sn; struct iscsi_login_req* isid; int version_max; int version_min; int current_stage; scalar_t__ req; scalar_t__ first_request; } ;
struct iscsi_conn {struct iscsi_login* login; } ;
struct cxgbit_sock {int skb; struct iscsi_conn* conn; } ;
struct cxgbit_lro_pdu_cb {int dlen; int doffset; int hdr; } ;


 int ISCSI_LOGIN_CURRENT_STAGE (int ) ;
 int MAX_KEY_VALUE_PAIRS ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 struct cxgbit_lro_pdu_cb* cxgbit_rx_pdu_cb (int ) ;
 scalar_t__ iscsi_target_check_login_request (struct iscsi_conn*,struct iscsi_login*) ;
 int memcpy (struct iscsi_login_req*,int ,int) ;
 int memset (int ,int ,int ) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int ) ;
 int skb_copy_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int cxgbit_rx_login_pdu(struct cxgbit_sock *csk)
{
 struct iscsi_conn *conn = csk->conn;
 struct iscsi_login *login = conn->login;
 struct cxgbit_lro_pdu_cb *pdu_cb = cxgbit_rx_pdu_cb(csk->skb);
 struct iscsi_login_req *login_req;

 login_req = (struct iscsi_login_req *)login->req;
 memcpy(login_req, pdu_cb->hdr, sizeof(*login_req));

 pr_debug("Got Login Command, Flags 0x%02x, ITT: 0x%08x,"
  " CmdSN: 0x%08x, ExpStatSN: 0x%08x, CID: %hu, Length: %u\n",
  login_req->flags, login_req->itt, login_req->cmdsn,
  login_req->exp_statsn, login_req->cid, pdu_cb->dlen);




 if (login->first_request) {
  login_req = (struct iscsi_login_req *)login->req;
  login->leading_connection = (!login_req->tsih) ? 1 : 0;
  login->current_stage = ISCSI_LOGIN_CURRENT_STAGE(
    login_req->flags);
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
 skb_copy_bits(csk->skb, pdu_cb->doffset, login->req_buf, pdu_cb->dlen);

 return 0;
}
