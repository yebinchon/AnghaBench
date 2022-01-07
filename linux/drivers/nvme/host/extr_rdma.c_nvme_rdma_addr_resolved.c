
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_rdma_queue {int cm_error; int cm_id; TYPE_1__* ctrl; } ;
struct nvme_ctrl {int device; TYPE_2__* opts; } ;
struct TYPE_4__ {scalar_t__ tos; } ;
struct TYPE_3__ {struct nvme_ctrl ctrl; } ;


 int NVME_RDMA_CONNECT_TIMEOUT_MS ;
 int dev_err (int ,char*,int ) ;
 int nvme_rdma_create_queue_ib (struct nvme_rdma_queue*) ;
 int nvme_rdma_destroy_queue_ib (struct nvme_rdma_queue*) ;
 int rdma_resolve_route (int ,int ) ;
 int rdma_set_service_type (int ,scalar_t__) ;

__attribute__((used)) static int nvme_rdma_addr_resolved(struct nvme_rdma_queue *queue)
{
 struct nvme_ctrl *ctrl = &queue->ctrl->ctrl;
 int ret;

 ret = nvme_rdma_create_queue_ib(queue);
 if (ret)
  return ret;

 if (ctrl->opts->tos >= 0)
  rdma_set_service_type(queue->cm_id, ctrl->opts->tos);
 ret = rdma_resolve_route(queue->cm_id, NVME_RDMA_CONNECT_TIMEOUT_MS);
 if (ret) {
  dev_err(ctrl->device, "rdma_resolve_route failed (%d).\n",
   queue->cm_error);
  goto out_destroy_queue;
 }

 return 0;

out_destroy_queue:
 nvme_rdma_destroy_queue_ib(queue);
 return ret;
}
