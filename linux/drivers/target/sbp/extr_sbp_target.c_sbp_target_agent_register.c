
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; struct sbp_target_agent* callback_data; int address_callback; } ;
struct sbp_target_agent {int doorbell; TYPE_1__ handler; scalar_t__ orb_pointer; int work; int state; struct sbp_login_descriptor* login; int lock; } ;
struct sbp_login_descriptor {int dummy; } ;


 int AGENT_STATE_RESET ;
 int ENOMEM ;
 struct sbp_target_agent* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int fw_core_add_address_handler (TYPE_1__*,int *) ;
 int kfree (struct sbp_target_agent*) ;
 struct sbp_target_agent* kmalloc (int,int ) ;
 int sbp_register_region ;
 int spin_lock_init (int *) ;
 int tgt_agent_fetch_work ;
 int tgt_agent_rw ;

__attribute__((used)) static struct sbp_target_agent *sbp_target_agent_register(
  struct sbp_login_descriptor *login)
{
 struct sbp_target_agent *agent;
 int ret;

 agent = kmalloc(sizeof(*agent), GFP_KERNEL);
 if (!agent)
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&agent->lock);

 agent->handler.length = 0x20;
 agent->handler.address_callback = tgt_agent_rw;
 agent->handler.callback_data = agent;

 agent->login = login;
 agent->state = AGENT_STATE_RESET;
 INIT_WORK(&agent->work, tgt_agent_fetch_work);
 agent->orb_pointer = 0;
 agent->doorbell = 0;

 ret = fw_core_add_address_handler(&agent->handler,
   &sbp_register_region);
 if (ret < 0) {
  kfree(agent);
  return ERR_PTR(ret);
 }

 return agent;
}
