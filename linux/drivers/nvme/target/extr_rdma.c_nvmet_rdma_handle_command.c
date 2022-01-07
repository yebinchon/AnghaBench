
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_8__ {int length; int addr; } ;
struct nvmet_rdma_rsp {int req; int wait_list; TYPE_4__ send_sge; TYPE_2__* cmd; } ;
struct nvmet_rdma_queue {int rsp_wr_wait_lock; int rsp_wr_wait_list; int nvme_sq; int nvme_cq; TYPE_3__* dev; } ;
struct TYPE_7__ {int device; } ;
struct TYPE_6__ {TYPE_1__* sge; } ;
struct TYPE_5__ {int length; int addr; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ib_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int nvmet_rdma_execute_command (struct nvmet_rdma_rsp*) ;
 scalar_t__ nvmet_rdma_map_sgl (struct nvmet_rdma_rsp*) ;
 int nvmet_rdma_ops ;
 int nvmet_req_complete (int *,scalar_t__) ;
 int nvmet_req_init (int *,int *,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nvmet_rdma_handle_command(struct nvmet_rdma_queue *queue,
  struct nvmet_rdma_rsp *cmd)
{
 u16 status;

 ib_dma_sync_single_for_cpu(queue->dev->device,
  cmd->cmd->sge[0].addr, cmd->cmd->sge[0].length,
  DMA_FROM_DEVICE);
 ib_dma_sync_single_for_cpu(queue->dev->device,
  cmd->send_sge.addr, cmd->send_sge.length,
  DMA_TO_DEVICE);

 if (!nvmet_req_init(&cmd->req, &queue->nvme_cq,
   &queue->nvme_sq, &nvmet_rdma_ops))
  return;

 status = nvmet_rdma_map_sgl(cmd);
 if (status)
  goto out_err;

 if (unlikely(!nvmet_rdma_execute_command(cmd))) {
  spin_lock(&queue->rsp_wr_wait_lock);
  list_add_tail(&cmd->wait_list, &queue->rsp_wr_wait_list);
  spin_unlock(&queue->rsp_wr_wait_lock);
 }

 return;

out_err:
 nvmet_req_complete(&cmd->req, status);
}
