
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nvme_fc_queue {int dummy; } ;
struct TYPE_2__ {int queue_count; } ;
struct nvme_fc_ctrl {struct nvme_fc_queue* queues; TYPE_1__ ctrl; } ;


 int __nvme_fc_create_hw_queue (struct nvme_fc_ctrl*,struct nvme_fc_queue*,int,int ) ;
 int __nvme_fc_delete_hw_queue (struct nvme_fc_ctrl*,struct nvme_fc_queue*,int) ;

__attribute__((used)) static int
nvme_fc_create_hw_io_queues(struct nvme_fc_ctrl *ctrl, u16 qsize)
{
 struct nvme_fc_queue *queue = &ctrl->queues[1];
 int i, ret;

 for (i = 1; i < ctrl->ctrl.queue_count; i++, queue++) {
  ret = __nvme_fc_create_hw_queue(ctrl, queue, i, qsize);
  if (ret)
   goto delete_queues;
 }

 return 0;

delete_queues:
 for (; i >= 0; i--)
  __nvme_fc_delete_hw_queue(ctrl, &ctrl->queues[i], i);
 return ret;
}
