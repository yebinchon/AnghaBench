
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvmet_sq {TYPE_1__* ctrl; int ref; int free_done; int confirm_done; } ;
struct TYPE_3__ {struct nvmet_sq** sqs; } ;


 int nvmet_async_events_free (TYPE_1__*) ;
 int nvmet_confirm_sq ;
 int nvmet_ctrl_put (TYPE_1__*) ;
 int percpu_ref_exit (int *) ;
 int percpu_ref_kill_and_confirm (int *,int ) ;
 int wait_for_completion (int *) ;

void nvmet_sq_destroy(struct nvmet_sq *sq)
{




 if (sq->ctrl && sq->ctrl->sqs && sq->ctrl->sqs[0] == sq)
  nvmet_async_events_free(sq->ctrl);
 percpu_ref_kill_and_confirm(&sq->ref, nvmet_confirm_sq);
 wait_for_completion(&sq->confirm_done);
 wait_for_completion(&sq->free_done);
 percpu_ref_exit(&sq->ref);

 if (sq->ctrl) {
  nvmet_ctrl_put(sq->ctrl);
  sq->ctrl = ((void*)0);
 }
}
