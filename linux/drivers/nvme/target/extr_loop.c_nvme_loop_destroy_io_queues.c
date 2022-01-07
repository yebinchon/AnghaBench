
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_count; } ;
struct nvme_loop_ctrl {TYPE_2__* queues; TYPE_1__ ctrl; } ;
struct TYPE_4__ {int nvme_sq; int flags; } ;


 int NVME_LOOP_Q_LIVE ;
 int clear_bit (int ,int *) ;
 int nvmet_sq_destroy (int *) ;

__attribute__((used)) static void nvme_loop_destroy_io_queues(struct nvme_loop_ctrl *ctrl)
{
 int i;

 for (i = 1; i < ctrl->ctrl.queue_count; i++) {
  clear_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[i].flags);
  nvmet_sq_destroy(&ctrl->queues[i].nvme_sq);
 }
}
