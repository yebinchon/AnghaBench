
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_rdma_queue {int queue_size; int rsp_ring; int ib_cq; TYPE_1__* qp; struct nvme_rdma_device* device; int flags; } ;
struct nvme_rdma_device {struct ib_device* dev; } ;
struct nvme_completion {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int rdma_mrs; } ;


 int DMA_FROM_DEVICE ;
 int NVME_RDMA_Q_TR_READY ;
 int ib_destroy_qp (TYPE_1__*) ;
 int ib_free_cq (int ) ;
 int ib_mr_pool_destroy (TYPE_1__*,int *) ;
 int nvme_rdma_dev_put (struct nvme_rdma_device*) ;
 int nvme_rdma_free_ring (struct ib_device*,int ,int ,int,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nvme_rdma_destroy_queue_ib(struct nvme_rdma_queue *queue)
{
 struct nvme_rdma_device *dev;
 struct ib_device *ibdev;

 if (!test_and_clear_bit(NVME_RDMA_Q_TR_READY, &queue->flags))
  return;

 dev = queue->device;
 ibdev = dev->dev;

 ib_mr_pool_destroy(queue->qp, &queue->qp->rdma_mrs);






 ib_destroy_qp(queue->qp);
 ib_free_cq(queue->ib_cq);

 nvme_rdma_free_ring(ibdev, queue->rsp_ring, queue->queue_size,
   sizeof(struct nvme_completion), DMA_FROM_DEVICE);

 nvme_rdma_dev_put(dev);
}
