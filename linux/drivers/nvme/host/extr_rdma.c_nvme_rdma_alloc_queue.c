
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct nvme_rdma_queue {int cmnd_capsule_len; size_t queue_size; int cm_id; int flags; int cm_error; int cm_done; struct nvme_rdma_ctrl* ctrl; } ;
struct TYPE_4__ {int ioccsz; int device; TYPE_1__* opts; } ;
struct nvme_rdma_ctrl {TYPE_2__ ctrl; int addr; int src_addr; struct nvme_rdma_queue* queues; } ;
struct nvme_command {int dummy; } ;
struct TYPE_3__ {int mask; } ;


 int ETIMEDOUT ;
 int IB_QPT_RC ;
 scalar_t__ IS_ERR (int ) ;
 int NVME_RDMA_CONNECT_TIMEOUT_MS ;
 int NVME_RDMA_Q_ALLOCATED ;
 int NVMF_OPT_HOST_TRADDR ;
 int PTR_ERR (int ) ;
 int RDMA_PS_TCP ;
 int dev_info (int ,char*,int) ;
 int init_completion (int *) ;
 int init_net ;
 int nvme_rdma_cm_handler ;
 int nvme_rdma_destroy_queue_ib (struct nvme_rdma_queue*) ;
 int nvme_rdma_wait_for_cm (struct nvme_rdma_queue*) ;
 int rdma_create_id (int *,int ,struct nvme_rdma_queue*,int ,int ) ;
 int rdma_destroy_id (int ) ;
 int rdma_resolve_addr (int ,struct sockaddr*,struct sockaddr*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int nvme_rdma_alloc_queue(struct nvme_rdma_ctrl *ctrl,
  int idx, size_t queue_size)
{
 struct nvme_rdma_queue *queue;
 struct sockaddr *src_addr = ((void*)0);
 int ret;

 queue = &ctrl->queues[idx];
 queue->ctrl = ctrl;
 init_completion(&queue->cm_done);

 if (idx > 0)
  queue->cmnd_capsule_len = ctrl->ctrl.ioccsz * 16;
 else
  queue->cmnd_capsule_len = sizeof(struct nvme_command);

 queue->queue_size = queue_size;

 queue->cm_id = rdma_create_id(&init_net, nvme_rdma_cm_handler, queue,
   RDMA_PS_TCP, IB_QPT_RC);
 if (IS_ERR(queue->cm_id)) {
  dev_info(ctrl->ctrl.device,
   "failed to create CM ID: %ld\n", PTR_ERR(queue->cm_id));
  return PTR_ERR(queue->cm_id);
 }

 if (ctrl->ctrl.opts->mask & NVMF_OPT_HOST_TRADDR)
  src_addr = (struct sockaddr *)&ctrl->src_addr;

 queue->cm_error = -ETIMEDOUT;
 ret = rdma_resolve_addr(queue->cm_id, src_addr,
   (struct sockaddr *)&ctrl->addr,
   NVME_RDMA_CONNECT_TIMEOUT_MS);
 if (ret) {
  dev_info(ctrl->ctrl.device,
   "rdma_resolve_addr failed (%d).\n", ret);
  goto out_destroy_cm_id;
 }

 ret = nvme_rdma_wait_for_cm(queue);
 if (ret) {
  dev_info(ctrl->ctrl.device,
   "rdma connection establishment failed (%d)\n", ret);
  goto out_destroy_cm_id;
 }

 set_bit(NVME_RDMA_Q_ALLOCATED, &queue->flags);

 return 0;

out_destroy_cm_id:
 rdma_destroy_id(queue->cm_id);
 nvme_rdma_destroy_queue_ib(queue);
 return ret;
}
