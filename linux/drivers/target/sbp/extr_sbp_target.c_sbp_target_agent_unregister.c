
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_target_agent {int work; int handler; } ;


 int cancel_work_sync (int *) ;
 int fw_core_remove_address_handler (int *) ;
 int kfree (struct sbp_target_agent*) ;

__attribute__((used)) static void sbp_target_agent_unregister(struct sbp_target_agent *agent)
{
 fw_core_remove_address_handler(&agent->handler);
 cancel_work_sync(&agent->work);
 kfree(agent);
}
