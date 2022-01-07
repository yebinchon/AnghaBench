
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {int doorbell; int lock; int orb_pointer; int work; int state; } ;
struct sbp2_pointer {int dummy; } ;
struct fw_card {int dummy; } ;


 int AGENT_STATE_ACTIVE ;
 int AGENT_STATE_RESET ;
 int AGENT_STATE_SUSPENDED ;
 int RCODE_COMPLETE ;
 int RCODE_CONFLICT_ERROR ;
 int RCODE_TYPE_ERROR ;


 int addr_to_sbp2_pointer (int ,struct sbp2_pointer*) ;
 int pr_debug (char*,...) ;
 int pr_notice (char*) ;
 int queue_work (int ,int *) ;
 int sbp2_pointer_to_addr (struct sbp2_pointer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int system_unbound_wq ;

__attribute__((used)) static int tgt_agent_rw_orb_pointer(struct fw_card *card, int tcode, void *data,
  struct sbp_target_agent *agent)
{
 struct sbp2_pointer *ptr = data;

 switch (tcode) {
 case 128:
  spin_lock_bh(&agent->lock);
  if (agent->state != AGENT_STATE_SUSPENDED &&
    agent->state != AGENT_STATE_RESET) {
   spin_unlock_bh(&agent->lock);
   pr_notice("Ignoring ORB_POINTER write while active.\n");
   return RCODE_CONFLICT_ERROR;
  }
  agent->state = AGENT_STATE_ACTIVE;
  spin_unlock_bh(&agent->lock);

  agent->orb_pointer = sbp2_pointer_to_addr(ptr);
  agent->doorbell = 0;

  pr_debug("tgt_agent ORB_POINTER write: 0x%llx\n",
    agent->orb_pointer);

  queue_work(system_unbound_wq, &agent->work);

  return RCODE_COMPLETE;

 case 129:
  pr_debug("tgt_agent ORB_POINTER READ\n");
  spin_lock_bh(&agent->lock);
  addr_to_sbp2_pointer(agent->orb_pointer, ptr);
  spin_unlock_bh(&agent->lock);
  return RCODE_COMPLETE;

 default:
  return RCODE_TYPE_ERROR;
 }
}
