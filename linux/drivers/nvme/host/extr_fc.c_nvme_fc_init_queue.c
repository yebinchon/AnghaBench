
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_fc_queue {int qnum; int cmnd_capsule_len; int dev; int csn; struct nvme_fc_ctrl* ctrl; } ;
struct TYPE_2__ {int ioccsz; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; int dev; struct nvme_fc_queue* queues; } ;
struct nvme_command {int dummy; } ;


 int atomic_set (int *,int ) ;
 int memset (struct nvme_fc_queue*,int ,int) ;

__attribute__((used)) static void
nvme_fc_init_queue(struct nvme_fc_ctrl *ctrl, int idx)
{
 struct nvme_fc_queue *queue;

 queue = &ctrl->queues[idx];
 memset(queue, 0, sizeof(*queue));
 queue->ctrl = ctrl;
 queue->qnum = idx;
 atomic_set(&queue->csn, 0);
 queue->dev = ctrl->dev;

 if (idx > 0)
  queue->cmnd_capsule_len = ctrl->ctrl.ioccsz * 16;
 else
  queue->cmnd_capsule_len = sizeof(struct nvme_command);
}
