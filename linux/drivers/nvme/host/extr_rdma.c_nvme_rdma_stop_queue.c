
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_queue {int flags; } ;


 int NVME_RDMA_Q_LIVE ;
 int __nvme_rdma_stop_queue (struct nvme_rdma_queue*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
{
 if (!test_and_clear_bit(NVME_RDMA_Q_LIVE, &queue->flags))
  return;
 __nvme_rdma_stop_queue(queue);
}
