
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
struct TYPE_5__ {int admin_tagset; int fabrics_q; int admin_q; } ;
struct nvme_rdma_ctrl {int * queues; TYPE_3__ async_event_sqe; TYPE_1__* device; TYPE_2__ ctrl; } ;
struct nvme_command {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int ) ;
 int nvme_rdma_free_qe (int ,TYPE_3__*,int,int ) ;
 int nvme_rdma_free_queue (int *) ;

__attribute__((used)) static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
  bool remove)
{
 if (remove) {
  blk_cleanup_queue(ctrl->ctrl.admin_q);
  blk_cleanup_queue(ctrl->ctrl.fabrics_q);
  blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 }
 if (ctrl->async_event_sqe.data) {
  nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
    sizeof(struct nvme_command), DMA_TO_DEVICE);
  ctrl->async_event_sqe.data = ((void*)0);
 }
 nvme_rdma_free_queue(&ctrl->queues[0]);
}
