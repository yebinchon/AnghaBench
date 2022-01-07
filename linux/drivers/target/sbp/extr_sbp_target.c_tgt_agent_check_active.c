
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {scalar_t__ state; int lock; } ;


 scalar_t__ AGENT_STATE_ACTIVE ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline bool tgt_agent_check_active(struct sbp_target_agent *agent)
{
 bool active;

 spin_lock_bh(&agent->lock);
 active = (agent->state == AGENT_STATE_ACTIVE);
 spin_unlock_bh(&agent->lock);

 return active;
}
