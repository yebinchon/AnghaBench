
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
struct sbp_target_agent {TYPE_2__ handler; TYPE_1__* login; } ;
struct sbp_session {int generation; int node_id; int lock; } ;
struct fw_request {int dummy; } ;
struct fw_card {int dummy; } ;
struct TYPE_3__ {struct sbp_session* sess; } ;


 int RCODE_ADDRESS_ERROR ;
 int RCODE_TYPE_ERROR ;
 int fw_send_response (struct fw_card*,struct fw_request*,int) ;
 int pr_notice (char*,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tgt_agent_rw_agent_reset (struct fw_card*,int,void*,struct sbp_target_agent*) ;
 int tgt_agent_rw_agent_state (struct fw_card*,int,void*,struct sbp_target_agent*) ;
 int tgt_agent_rw_doorbell (struct fw_card*,int,void*,struct sbp_target_agent*) ;
 int tgt_agent_rw_orb_pointer (struct fw_card*,int,void*,struct sbp_target_agent*) ;
 int tgt_agent_rw_unsolicited_status_enable (struct fw_card*,int,void*,struct sbp_target_agent*) ;

__attribute__((used)) static void tgt_agent_rw(struct fw_card *card, struct fw_request *request,
  int tcode, int destination, int source, int generation,
  unsigned long long offset, void *data, size_t length,
  void *callback_data)
{
 struct sbp_target_agent *agent = callback_data;
 struct sbp_session *sess = agent->login->sess;
 int sess_gen, sess_node, rcode;

 spin_lock_bh(&sess->lock);
 sess_gen = sess->generation;
 sess_node = sess->node_id;
 spin_unlock_bh(&sess->lock);

 if (generation != sess_gen) {
  pr_notice("ignoring request with wrong generation\n");
  rcode = RCODE_TYPE_ERROR;
  goto out;
 }

 if (source != sess_node) {
  pr_notice("ignoring request from foreign node (%x != %x)\n",
    source, sess_node);
  rcode = RCODE_TYPE_ERROR;
  goto out;
 }


 offset -= agent->handler.offset;

 if (offset == 0x00 && length == 4) {

  rcode = tgt_agent_rw_agent_state(card, tcode, data, agent);
 } else if (offset == 0x04 && length == 4) {

  rcode = tgt_agent_rw_agent_reset(card, tcode, data, agent);
 } else if (offset == 0x08 && length == 8) {

  rcode = tgt_agent_rw_orb_pointer(card, tcode, data, agent);
 } else if (offset == 0x10 && length == 4) {

  rcode = tgt_agent_rw_doorbell(card, tcode, data, agent);
 } else if (offset == 0x14 && length == 4) {

  rcode = tgt_agent_rw_unsolicited_status_enable(card, tcode,
    data, agent);
 } else {
  rcode = RCODE_ADDRESS_ERROR;
 }

out:
 fw_send_response(card, request, rcode);
}
