
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int resubmit_wq; } ;
struct CommandList {int work; } ;


 int INIT_WORK (int *,int ) ;
 int hpsa_command_resubmit_worker ;
 int queue_work_on (int ,int ,int *) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void hpsa_retry_cmd(struct ctlr_info *h, struct CommandList *c)
{
 INIT_WORK(&c->work, hpsa_command_resubmit_worker);
 queue_work_on(raw_smp_processor_id(), h->resubmit_wq, &c->work);
}
