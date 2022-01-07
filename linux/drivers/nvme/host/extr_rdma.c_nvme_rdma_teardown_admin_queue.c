
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int admin_q; scalar_t__ admin_tagset; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int * queues; } ;


 int blk_mq_quiesce_queue (int ) ;
 int blk_mq_tagset_busy_iter (scalar_t__,int ,TYPE_1__*) ;
 int blk_mq_tagset_wait_completed_request (scalar_t__) ;
 int blk_mq_unquiesce_queue (int ) ;
 int nvme_cancel_request ;
 int nvme_rdma_destroy_admin_queue (struct nvme_rdma_ctrl*,int) ;
 int nvme_rdma_stop_queue (int *) ;

__attribute__((used)) static void nvme_rdma_teardown_admin_queue(struct nvme_rdma_ctrl *ctrl,
  bool remove)
{
 blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 nvme_rdma_stop_queue(&ctrl->queues[0]);
 if (ctrl->ctrl.admin_tagset) {
  blk_mq_tagset_busy_iter(ctrl->ctrl.admin_tagset,
   nvme_cancel_request, &ctrl->ctrl);
  blk_mq_tagset_wait_completed_request(ctrl->ctrl.admin_tagset);
 }
 if (remove)
  blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
 nvme_rdma_destroy_admin_queue(ctrl, remove);
}
