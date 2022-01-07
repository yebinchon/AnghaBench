
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_fc_queue {int * lldd_handle; } ;
struct nvme_fc_ctrl {TYPE_2__* lport; } ;
struct TYPE_4__ {int localport; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* delete_queue ) (int *,unsigned int,int *) ;} ;


 int stub1 (int *,unsigned int,int *) ;

__attribute__((used)) static void
__nvme_fc_delete_hw_queue(struct nvme_fc_ctrl *ctrl,
 struct nvme_fc_queue *queue, unsigned int qidx)
{
 if (ctrl->lport->ops->delete_queue)
  ctrl->lport->ops->delete_queue(&ctrl->lport->localport, qidx,
    queue->lldd_handle);
 queue->lldd_handle = ((void*)0);
}
