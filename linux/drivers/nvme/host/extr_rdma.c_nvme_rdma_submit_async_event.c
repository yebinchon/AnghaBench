
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvme_rdma_queue {TYPE_1__* device; } ;
struct TYPE_6__ {int done; } ;
struct nvme_rdma_qe {int dma; TYPE_3__ cqe; struct nvme_command* data; } ;
struct nvme_rdma_ctrl {struct nvme_rdma_qe async_event_sqe; struct nvme_rdma_queue* queues; } ;
struct nvme_ctrl {int dummy; } ;
struct TYPE_5__ {int flags; int command_id; int opcode; } ;
struct nvme_command {TYPE_2__ common; } ;
struct ib_sge {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {struct ib_device* dev; } ;


 int DMA_TO_DEVICE ;
 int NVME_AQ_BLK_MQ_DEPTH ;
 int NVME_CMD_SGL_METABUF ;
 int WARN_ON_ONCE (int) ;
 int ib_dma_sync_single_for_cpu (struct ib_device*,int ,int,int ) ;
 int ib_dma_sync_single_for_device (struct ib_device*,int ,int,int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_async_event ;
 int nvme_rdma_async_done ;
 int nvme_rdma_post_send (struct nvme_rdma_queue*,struct nvme_rdma_qe*,struct ib_sge*,int,int *) ;
 int nvme_rdma_set_sg_null (struct nvme_command*) ;
 struct nvme_rdma_ctrl* to_rdma_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_rdma_submit_async_event(struct nvme_ctrl *arg)
{
 struct nvme_rdma_ctrl *ctrl = to_rdma_ctrl(arg);
 struct nvme_rdma_queue *queue = &ctrl->queues[0];
 struct ib_device *dev = queue->device->dev;
 struct nvme_rdma_qe *sqe = &ctrl->async_event_sqe;
 struct nvme_command *cmd = sqe->data;
 struct ib_sge sge;
 int ret;

 ib_dma_sync_single_for_cpu(dev, sqe->dma, sizeof(*cmd), DMA_TO_DEVICE);

 memset(cmd, 0, sizeof(*cmd));
 cmd->common.opcode = nvme_admin_async_event;
 cmd->common.command_id = NVME_AQ_BLK_MQ_DEPTH;
 cmd->common.flags |= NVME_CMD_SGL_METABUF;
 nvme_rdma_set_sg_null(cmd);

 sqe->cqe.done = nvme_rdma_async_done;

 ib_dma_sync_single_for_device(dev, sqe->dma, sizeof(*cmd),
   DMA_TO_DEVICE);

 ret = nvme_rdma_post_send(queue, sqe, &sge, 1, ((void*)0));
 WARN_ON_ONCE(ret);
}
