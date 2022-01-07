
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {int doorbell; int work; int lock; int state; } ;
struct fw_card {int dummy; } ;


 int AGENT_STATE_ACTIVE ;
 int AGENT_STATE_SUSPENDED ;
 int RCODE_COMPLETE ;
 int RCODE_CONFLICT_ERROR ;
 int RCODE_TYPE_ERROR ;


 int pr_debug (char*) ;
 int queue_work (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int system_unbound_wq ;

__attribute__((used)) static int tgt_agent_rw_doorbell(struct fw_card *card, int tcode, void *data,
  struct sbp_target_agent *agent)
{
 switch (tcode) {
 case 128:
  spin_lock_bh(&agent->lock);
  if (agent->state != AGENT_STATE_SUSPENDED) {
   spin_unlock_bh(&agent->lock);
   pr_debug("Ignoring DOORBELL while active.\n");
   return RCODE_CONFLICT_ERROR;
  }
  agent->state = AGENT_STATE_ACTIVE;
  spin_unlock_bh(&agent->lock);

  agent->doorbell = 1;

  pr_debug("tgt_agent DOORBELL\n");

  queue_work(system_unbound_wq, &agent->work);

  return RCODE_COMPLETE;

 case 129:
  return RCODE_COMPLETE;

 default:
  return RCODE_TYPE_ERROR;
 }
}
