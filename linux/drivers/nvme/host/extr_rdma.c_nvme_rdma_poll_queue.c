
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_rdma_queue {TYPE_1__* ctrl; } ;
struct TYPE_2__ {scalar_t__* io_queues; } ;


 size_t HCTX_TYPE_DEFAULT ;
 size_t HCTX_TYPE_READ ;
 scalar_t__ nvme_rdma_queue_idx (struct nvme_rdma_queue*) ;

__attribute__((used)) static bool nvme_rdma_poll_queue(struct nvme_rdma_queue *queue)
{
 return nvme_rdma_queue_idx(queue) >
  queue->ctrl->io_queues[HCTX_TYPE_DEFAULT] +
  queue->ctrl->io_queues[HCTX_TYPE_READ];
}
