
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int queue_count; } ;
struct nvme_loop_ctrl {TYPE_1__* queues; TYPE_2__ ctrl; } ;
struct TYPE_3__ {int flags; } ;


 int NVME_LOOP_Q_LIVE ;
 int nvmf_connect_io_queue (TYPE_2__*,int,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int nvme_loop_connect_io_queues(struct nvme_loop_ctrl *ctrl)
{
 int i, ret;

 for (i = 1; i < ctrl->ctrl.queue_count; i++) {
  ret = nvmf_connect_io_queue(&ctrl->ctrl, i, 0);
  if (ret)
   return ret;
  set_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[i].flags);
 }

 return 0;
}
