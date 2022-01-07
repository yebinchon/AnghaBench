
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue_count; scalar_t__ tagset; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; } ;


 int blk_mq_tagset_busy_iter (scalar_t__,int ,TYPE_1__*) ;
 int blk_mq_tagset_wait_completed_request (scalar_t__) ;
 int nvme_cancel_request ;
 int nvme_rdma_destroy_io_queues (struct nvme_rdma_ctrl*,int) ;
 int nvme_rdma_stop_io_queues (struct nvme_rdma_ctrl*) ;
 int nvme_start_queues (TYPE_1__*) ;
 int nvme_stop_queues (TYPE_1__*) ;

__attribute__((used)) static void nvme_rdma_teardown_io_queues(struct nvme_rdma_ctrl *ctrl,
  bool remove)
{
 if (ctrl->ctrl.queue_count > 1) {
  nvme_stop_queues(&ctrl->ctrl);
  nvme_rdma_stop_io_queues(ctrl);
  if (ctrl->ctrl.tagset) {
   blk_mq_tagset_busy_iter(ctrl->ctrl.tagset,
    nvme_cancel_request, &ctrl->ctrl);
   blk_mq_tagset_wait_completed_request(ctrl->ctrl.tagset);
  }
  if (remove)
   nvme_start_queues(&ctrl->ctrl);
  nvme_rdma_destroy_io_queues(ctrl, remove);
 }
}
