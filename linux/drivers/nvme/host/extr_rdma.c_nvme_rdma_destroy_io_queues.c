
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tagset; int connect_q; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int ) ;
 int nvme_rdma_free_io_queues (struct nvme_rdma_ctrl*) ;

__attribute__((used)) static void nvme_rdma_destroy_io_queues(struct nvme_rdma_ctrl *ctrl,
  bool remove)
{
 if (remove) {
  blk_cleanup_queue(ctrl->ctrl.connect_q);
  blk_mq_free_tag_set(ctrl->ctrl.tagset);
 }
 nvme_rdma_free_io_queues(ctrl);
}
