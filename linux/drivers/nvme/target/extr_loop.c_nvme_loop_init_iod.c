
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cqe; int * cmd; } ;
struct nvme_loop_iod {int work; int * queue; int cqe; TYPE_1__ req; int cmd; } ;
struct nvme_loop_ctrl {int * queues; } ;


 int INIT_WORK (int *,int ) ;
 int nvme_loop_execute_work ;

__attribute__((used)) static int nvme_loop_init_iod(struct nvme_loop_ctrl *ctrl,
  struct nvme_loop_iod *iod, unsigned int queue_idx)
{
 iod->req.cmd = &iod->cmd;
 iod->req.cqe = &iod->cqe;
 iod->queue = &ctrl->queues[queue_idx];
 INIT_WORK(&iod->work, nvme_loop_execute_work);
 return 0;
}
