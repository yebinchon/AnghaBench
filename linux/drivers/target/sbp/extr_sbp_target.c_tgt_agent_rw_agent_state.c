
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {int state; int lock; } ;
struct fw_card {int dummy; } ;
typedef int __be32 ;


 int RCODE_COMPLETE ;
 int RCODE_TYPE_ERROR ;


 int cpu_to_be32 (int) ;
 int pr_debug (char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int tgt_agent_rw_agent_state(struct fw_card *card, int tcode, void *data,
  struct sbp_target_agent *agent)
{
 int state;

 switch (tcode) {
 case 129:
  pr_debug("tgt_agent AGENT_STATE READ\n");

  spin_lock_bh(&agent->lock);
  state = agent->state;
  spin_unlock_bh(&agent->lock);

  *(__be32 *)data = cpu_to_be32(state);

  return RCODE_COMPLETE;

 case 128:

  return RCODE_COMPLETE;

 default:
  return RCODE_TYPE_ERROR;
 }
}
