
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvmet_rdma_device {scalar_t__ srq; int device; } ;
struct nvmet_rdma_cmd {int wr; TYPE_2__* queue; TYPE_3__* sge; } ;
struct TYPE_6__ {int length; int addr; } ;
struct TYPE_5__ {TYPE_1__* cm_id; } ;
struct TYPE_4__ {int qp; } ;


 int DMA_FROM_DEVICE ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int ib_post_recv (int ,int *,int *) ;
 int ib_post_srq_recv (scalar_t__,int *,int *) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvmet_rdma_post_recv(struct nvmet_rdma_device *ndev,
  struct nvmet_rdma_cmd *cmd)
{
 int ret;

 ib_dma_sync_single_for_device(ndev->device,
  cmd->sge[0].addr, cmd->sge[0].length,
  DMA_FROM_DEVICE);

 if (ndev->srq)
  ret = ib_post_srq_recv(ndev->srq, &cmd->wr, ((void*)0));
 else
  ret = ib_post_recv(cmd->queue->cm_id->qp, &cmd->wr, ((void*)0));

 if (unlikely(ret))
  pr_err("post_recv cmd failed\n");

 return ret;
}
