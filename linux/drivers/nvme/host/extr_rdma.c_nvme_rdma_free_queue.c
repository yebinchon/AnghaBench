
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_queue {int cm_id; int flags; } ;


 int NVME_RDMA_Q_ALLOCATED ;
 int nvme_rdma_destroy_queue_ib (struct nvme_rdma_queue*) ;
 int rdma_destroy_id (int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void nvme_rdma_free_queue(struct nvme_rdma_queue *queue)
{
 if (!test_and_clear_bit(NVME_RDMA_Q_ALLOCATED, &queue->flags))
  return;

 nvme_rdma_destroy_queue_ib(queue);
 rdma_destroy_id(queue->cm_id);
}
