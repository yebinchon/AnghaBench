
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_target {void (* job_step ) (struct ibmvfc_target*) ;TYPE_1__* vhost; } ;
struct TYPE_2__ {int work_wait_q; } ;


 int IBMVFC_TGT_ACTION_INIT ;
 int ibmvfc_set_tgt_action (struct ibmvfc_target*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvfc_init_tgt(struct ibmvfc_target *tgt,
       void (*job_step) (struct ibmvfc_target *))
{
 ibmvfc_set_tgt_action(tgt, IBMVFC_TGT_ACTION_INIT);
 tgt->job_step = job_step;
 wake_up(&tgt->vhost->work_wait_q);
}
