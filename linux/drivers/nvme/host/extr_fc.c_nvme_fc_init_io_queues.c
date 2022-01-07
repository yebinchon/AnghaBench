
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue_count; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; } ;


 int nvme_fc_init_queue (struct nvme_fc_ctrl*,int) ;

__attribute__((used)) static void
nvme_fc_init_io_queues(struct nvme_fc_ctrl *ctrl)
{
 int i;

 for (i = 1; i < ctrl->ctrl.queue_count; i++)
  nvme_fc_init_queue(ctrl, i);
}
