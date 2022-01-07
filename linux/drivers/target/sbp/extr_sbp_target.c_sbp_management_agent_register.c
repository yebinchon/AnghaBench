
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp_tport {int dummy; } ;
struct TYPE_2__ {int length; struct sbp_management_agent* callback_data; int address_callback; } ;
struct sbp_management_agent {TYPE_1__ handler; int * request; scalar_t__ orb_offset; int work; int state; struct sbp_tport* tport; int lock; } ;


 int ENOMEM ;
 struct sbp_management_agent* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MANAGEMENT_AGENT_STATE_IDLE ;
 int fw_core_add_address_handler (TYPE_1__*,int *) ;
 int kfree (struct sbp_management_agent*) ;
 struct sbp_management_agent* kmalloc (int,int ) ;
 int sbp_mgt_agent_process ;
 int sbp_mgt_agent_rw ;
 int sbp_register_region ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct sbp_management_agent *sbp_management_agent_register(
  struct sbp_tport *tport)
{
 int ret;
 struct sbp_management_agent *agent;

 agent = kmalloc(sizeof(*agent), GFP_KERNEL);
 if (!agent)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&agent->lock);
 agent->tport = tport;
 agent->handler.length = 0x08;
 agent->handler.address_callback = sbp_mgt_agent_rw;
 agent->handler.callback_data = agent;
 agent->state = MANAGEMENT_AGENT_STATE_IDLE;
 INIT_WORK(&agent->work, sbp_mgt_agent_process);
 agent->orb_offset = 0;
 agent->request = ((void*)0);

 ret = fw_core_add_address_handler(&agent->handler,
   &sbp_register_region);
 if (ret < 0) {
  kfree(agent);
  return ERR_PTR(ret);
 }

 return agent;
}
