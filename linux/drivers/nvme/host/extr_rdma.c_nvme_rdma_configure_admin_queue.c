
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int * data; } ;
struct TYPE_16__ {int max_segments; int max_hw_sectors; void* admin_tagset; void* fabrics_q; void* admin_q; int numa_node; } ;
struct nvme_rdma_ctrl {int max_fr_pages; TYPE_2__* queues; TYPE_6__ async_event_sqe; TYPE_1__* device; TYPE_7__ ctrl; int admin_tag_set; } ;
struct nvme_command {int dummy; } ;
struct TYPE_14__ {int dma_device; } ;
struct TYPE_13__ {TYPE_1__* device; } ;
struct TYPE_12__ {TYPE_3__* dev; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ IS_ERR (void*) ;
 int NVME_AQ_DEPTH ;
 int PTR_ERR (void*) ;
 int SZ_4K ;
 int blk_cleanup_queue (void*) ;
 int blk_mq_free_tag_set (void*) ;
 void* blk_mq_init_queue (int *) ;
 int blk_mq_unquiesce_queue (void*) ;
 int dev_to_node (int ) ;
 int ilog2 (int ) ;
 int nvme_enable_ctrl (TYPE_7__*) ;
 int nvme_init_identify (TYPE_7__*) ;
 int nvme_rdma_alloc_qe (TYPE_3__*,TYPE_6__*,int,int ) ;
 int nvme_rdma_alloc_queue (struct nvme_rdma_ctrl*,int ,int ) ;
 void* nvme_rdma_alloc_tagset (TYPE_7__*,int) ;
 int nvme_rdma_free_qe (TYPE_3__*,TYPE_6__*,int,int ) ;
 int nvme_rdma_free_queue (TYPE_2__*) ;
 int nvme_rdma_get_max_fr_pages (TYPE_3__*) ;
 int nvme_rdma_start_queue (struct nvme_rdma_ctrl*,int ) ;
 int nvme_rdma_stop_queue (TYPE_2__*) ;

__attribute__((used)) static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
  bool new)
{
 int error;

 error = nvme_rdma_alloc_queue(ctrl, 0, NVME_AQ_DEPTH);
 if (error)
  return error;

 ctrl->device = ctrl->queues[0].device;
 ctrl->ctrl.numa_node = dev_to_node(ctrl->device->dev->dma_device);

 ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);






 error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
   sizeof(struct nvme_command), DMA_TO_DEVICE);
 if (error)
  goto out_free_queue;

 if (new) {
  ctrl->ctrl.admin_tagset = nvme_rdma_alloc_tagset(&ctrl->ctrl, 1);
  if (IS_ERR(ctrl->ctrl.admin_tagset)) {
   error = PTR_ERR(ctrl->ctrl.admin_tagset);
   goto out_free_async_qe;
  }

  ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
  if (IS_ERR(ctrl->ctrl.fabrics_q)) {
   error = PTR_ERR(ctrl->ctrl.fabrics_q);
   goto out_free_tagset;
  }

  ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
  if (IS_ERR(ctrl->ctrl.admin_q)) {
   error = PTR_ERR(ctrl->ctrl.admin_q);
   goto out_cleanup_fabrics_q;
  }
 }

 error = nvme_rdma_start_queue(ctrl, 0);
 if (error)
  goto out_cleanup_queue;

 error = nvme_enable_ctrl(&ctrl->ctrl);
 if (error)
  goto out_stop_queue;

 ctrl->ctrl.max_segments = ctrl->max_fr_pages;
 ctrl->ctrl.max_hw_sectors = ctrl->max_fr_pages << (ilog2(SZ_4K) - 9);

 blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);

 error = nvme_init_identify(&ctrl->ctrl);
 if (error)
  goto out_stop_queue;

 return 0;

out_stop_queue:
 nvme_rdma_stop_queue(&ctrl->queues[0]);
out_cleanup_queue:
 if (new)
  blk_cleanup_queue(ctrl->ctrl.admin_q);
out_cleanup_fabrics_q:
 if (new)
  blk_cleanup_queue(ctrl->ctrl.fabrics_q);
out_free_tagset:
 if (new)
  blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
out_free_async_qe:
 nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
  sizeof(struct nvme_command), DMA_TO_DEVICE);
 ctrl->async_event_sqe.data = ((void*)0);
out_free_queue:
 nvme_rdma_free_queue(&ctrl->queues[0]);
 return error;
}
