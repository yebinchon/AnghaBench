
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sbp_tport {struct sbp_tpg* tpg; } ;
struct sbp_tpg {int dummy; } ;
struct TYPE_6__ {void* status; } ;
struct TYPE_4__ {int misc; } ;
struct sbp_management_request {TYPE_3__ status; int speed; int card; int node_addr; int generation; TYPE_1__ orb; } ;
struct sbp_management_agent {struct sbp_tport* tport; } ;
struct sbp_login_descriptor {TYPE_2__* sess; } ;
struct TYPE_5__ {scalar_t__ guid; int lock; int speed; scalar_t__ card; int node_id; int generation; } ;


 int RCODE_COMPLETE ;
 int RECONNECT_ORB_LOGIN_ID (int ) ;
 int SBP_STATUS_ACCESS_DENIED ;
 int SBP_STATUS_OK ;
 int SBP_STATUS_UNSPECIFIED_ERROR ;
 int STATUS_BLOCK_RESP (int ) ;
 int STATUS_BLOCK_SBP_STATUS (int ) ;
 int STATUS_RESP_REQUEST_COMPLETE ;
 int STATUS_RESP_TRANSPORT_FAILURE ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 scalar_t__ fw_card_get (int ) ;
 int fw_card_put (scalar_t__) ;
 int pr_err (char*) ;
 int pr_notice (char*,scalar_t__) ;
 int pr_warn (char*,int) ;
 int read_peer_guid (scalar_t__*,struct sbp_management_request*) ;
 struct sbp_login_descriptor* sbp_login_find_by_id (struct sbp_tpg*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sbp_management_request_reconnect(
 struct sbp_management_agent *agent, struct sbp_management_request *req,
 int *status_data_size)
{
 struct sbp_tport *tport = agent->tport;
 struct sbp_tpg *tpg = tport->tpg;
 int ret;
 u64 guid;
 struct sbp_login_descriptor *login;

 ret = read_peer_guid(&guid, req);
 if (ret != RCODE_COMPLETE) {
  pr_warn("failed to read peer GUID: %d\n", ret);

  req->status.status = cpu_to_be32(
   STATUS_BLOCK_RESP(STATUS_RESP_TRANSPORT_FAILURE) |
   STATUS_BLOCK_SBP_STATUS(SBP_STATUS_UNSPECIFIED_ERROR));
  return;
 }

 pr_notice("mgt_agent RECONNECT from %016llx\n", guid);

 login = sbp_login_find_by_id(tpg,
  RECONNECT_ORB_LOGIN_ID(be32_to_cpu(req->orb.misc)));

 if (!login) {
  pr_err("mgt_agent RECONNECT unknown login ID\n");

  req->status.status = cpu_to_be32(
   STATUS_BLOCK_RESP(STATUS_RESP_REQUEST_COMPLETE) |
   STATUS_BLOCK_SBP_STATUS(SBP_STATUS_ACCESS_DENIED));
  return;
 }

 if (login->sess->guid != guid) {
  pr_err("mgt_agent RECONNECT login GUID doesn't match\n");

  req->status.status = cpu_to_be32(
   STATUS_BLOCK_RESP(STATUS_RESP_REQUEST_COMPLETE) |
   STATUS_BLOCK_SBP_STATUS(SBP_STATUS_ACCESS_DENIED));
  return;
 }

 spin_lock_bh(&login->sess->lock);
 if (login->sess->card)
  fw_card_put(login->sess->card);


 login->sess->generation = req->generation;
 login->sess->node_id = req->node_addr;
 login->sess->card = fw_card_get(req->card);
 login->sess->speed = req->speed;
 spin_unlock_bh(&login->sess->lock);

 req->status.status = cpu_to_be32(
  STATUS_BLOCK_RESP(STATUS_RESP_REQUEST_COMPLETE) |
  STATUS_BLOCK_SBP_STATUS(SBP_STATUS_OK));
}
