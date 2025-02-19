
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tagset; int connect_q; scalar_t__ queue_count; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int tag_set; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int ) ;
 int blk_mq_init_queue (int *) ;
 int blk_mq_update_nr_hw_queues (int *,scalar_t__) ;
 int nvme_rdma_alloc_io_queues (struct nvme_rdma_ctrl*) ;
 int nvme_rdma_alloc_tagset (TYPE_1__*,int) ;
 int nvme_rdma_free_io_queues (struct nvme_rdma_ctrl*) ;
 int nvme_rdma_start_io_queues (struct nvme_rdma_ctrl*) ;

__attribute__((used)) static int nvme_rdma_configure_io_queues(struct nvme_rdma_ctrl *ctrl, bool new)
{
 int ret;

 ret = nvme_rdma_alloc_io_queues(ctrl);
 if (ret)
  return ret;

 if (new) {
  ctrl->ctrl.tagset = nvme_rdma_alloc_tagset(&ctrl->ctrl, 0);
  if (IS_ERR(ctrl->ctrl.tagset)) {
   ret = PTR_ERR(ctrl->ctrl.tagset);
   goto out_free_io_queues;
  }

  ctrl->ctrl.connect_q = blk_mq_init_queue(&ctrl->tag_set);
  if (IS_ERR(ctrl->ctrl.connect_q)) {
   ret = PTR_ERR(ctrl->ctrl.connect_q);
   goto out_free_tag_set;
  }
 } else {
  blk_mq_update_nr_hw_queues(&ctrl->tag_set,
   ctrl->ctrl.queue_count - 1);
 }

 ret = nvme_rdma_start_io_queues(ctrl);
 if (ret)
  goto out_cleanup_connect_q;

 return 0;

out_cleanup_connect_q:
 if (new)
  blk_cleanup_queue(ctrl->ctrl.connect_q);
out_free_tag_set:
 if (new)
  blk_mq_free_tag_set(ctrl->ctrl.tagset);
out_free_io_queues:
 nvme_rdma_free_io_queues(ctrl);
 return ret;
}
