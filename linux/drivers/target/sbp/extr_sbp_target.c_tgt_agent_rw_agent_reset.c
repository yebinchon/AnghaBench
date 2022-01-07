
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {int lock; int state; } ;
struct fw_card {int dummy; } ;


 int AGENT_STATE_RESET ;
 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;

 int pr_debug (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int tgt_agent_rw_agent_reset(struct fw_card *card, int tcode, void *data,
  struct sbp_target_agent *agent)
{
 switch (tcode) {
 case 128:
  pr_debug("tgt_agent AGENT_RESET\n");
  spin_lock_bh(&agent->lock);
  agent->state = AGENT_STATE_RESET;
  spin_unlock_bh(&agent->lock);
  return RCODE_COMPLETE;

 default:
  return RCODE_TYPE_ERROR;
 }
}
