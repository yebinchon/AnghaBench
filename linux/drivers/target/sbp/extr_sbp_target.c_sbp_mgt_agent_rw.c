
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbp_management_request {int generation; int node_addr; int speed; int card; } ;
struct TYPE_4__ {unsigned long long offset; } ;
struct sbp_management_agent {int state; int orb_offset; int work; struct sbp_management_request* request; int lock; TYPE_2__ handler; TYPE_1__* tport; } ;
struct sbp2_pointer {int dummy; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
struct TYPE_3__ {int enable; } ;


 int GFP_ATOMIC ;
 int MANAGEMENT_AGENT_STATE_BUSY ;
 int RCODE_ADDRESS_ERROR ;
 int RCODE_COMPLETE ;
 int RCODE_CONFLICT_ERROR ;
 int RCODE_TYPE_ERROR ;
 int TCODE_READ_BLOCK_REQUEST ;
 int TCODE_WRITE_BLOCK_REQUEST ;
 int addr_to_sbp2_pointer (int ,struct sbp2_pointer*) ;
 int fw_card_get (struct fw_card*) ;
 int fw_get_request_speed (struct fw_request*) ;
 int fw_send_response (struct fw_card*,struct fw_request*,int) ;
 struct sbp_management_request* kzalloc (int,int ) ;
 int pr_notice (char*) ;
 int queue_work (int ,int *) ;
 int sbp2_pointer_to_addr (struct sbp2_pointer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int system_unbound_wq ;

__attribute__((used)) static void sbp_mgt_agent_rw(struct fw_card *card,
 struct fw_request *request, int tcode, int destination, int source,
 int generation, unsigned long long offset, void *data, size_t length,
 void *callback_data)
{
 struct sbp_management_agent *agent = callback_data;
 struct sbp2_pointer *ptr = data;
 int rcode = RCODE_ADDRESS_ERROR;

 if (!agent->tport->enable)
  goto out;

 if ((offset != agent->handler.offset) || (length != 8))
  goto out;

 if (tcode == TCODE_WRITE_BLOCK_REQUEST) {
  struct sbp_management_request *req;
  int prev_state;

  spin_lock_bh(&agent->lock);
  prev_state = agent->state;
  agent->state = MANAGEMENT_AGENT_STATE_BUSY;
  spin_unlock_bh(&agent->lock);

  if (prev_state == MANAGEMENT_AGENT_STATE_BUSY) {
   pr_notice("ignoring management request while busy\n");
   rcode = RCODE_CONFLICT_ERROR;
   goto out;
  }
  req = kzalloc(sizeof(*req), GFP_ATOMIC);
  if (!req) {
   rcode = RCODE_CONFLICT_ERROR;
   goto out;
  }

  req->card = fw_card_get(card);
  req->generation = generation;
  req->node_addr = source;
  req->speed = fw_get_request_speed(request);

  agent->orb_offset = sbp2_pointer_to_addr(ptr);
  agent->request = req;

  queue_work(system_unbound_wq, &agent->work);
  rcode = RCODE_COMPLETE;
 } else if (tcode == TCODE_READ_BLOCK_REQUEST) {
  addr_to_sbp2_pointer(agent->orb_offset, ptr);
  rcode = RCODE_COMPLETE;
 } else {
  rcode = RCODE_TYPE_ERROR;
 }

out:
 fw_send_response(card, request, rcode);
}
