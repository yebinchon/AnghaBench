
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_queue {int dummy; } ;
struct TYPE_2__ {int queue_count; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; struct nvme_fc_queue* queues; } ;


 int __nvme_fc_delete_hw_queue (struct nvme_fc_ctrl*,struct nvme_fc_queue*,int) ;

__attribute__((used)) static void
nvme_fc_delete_hw_io_queues(struct nvme_fc_ctrl *ctrl)
{
 struct nvme_fc_queue *queue = &ctrl->queues[ctrl->ctrl.queue_count - 1];
 int i;

 for (i = ctrl->ctrl.queue_count - 1; i >= 1; i--, queue--)
  __nvme_fc_delete_hw_queue(ctrl, queue, i);
}
