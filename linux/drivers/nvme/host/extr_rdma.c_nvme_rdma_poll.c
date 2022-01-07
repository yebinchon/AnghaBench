
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_queue {int ib_cq; } ;
struct blk_mq_hw_ctx {struct nvme_rdma_queue* driver_data; } ;


 int ib_process_cq_direct (int ,int) ;

__attribute__((used)) static int nvme_rdma_poll(struct blk_mq_hw_ctx *hctx)
{
 struct nvme_rdma_queue *queue = hctx->driver_data;

 return ib_process_cq_direct(queue->ib_cq, -1);
}
