
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue_count; } ;
struct nvme_rdma_ctrl {int * queues; TYPE_1__ ctrl; } ;


 int nvme_rdma_stop_queue (int *) ;

__attribute__((used)) static void nvme_rdma_stop_io_queues(struct nvme_rdma_ctrl *ctrl)
{
 int i;

 for (i = 1; i < ctrl->ctrl.queue_count; i++)
  nvme_rdma_stop_queue(&ctrl->queues[i]);
}
