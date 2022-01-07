
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_qe {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int kfree (struct nvme_rdma_qe*) ;
 int nvme_rdma_free_qe (struct ib_device*,struct nvme_rdma_qe*,size_t,int) ;

__attribute__((used)) static void nvme_rdma_free_ring(struct ib_device *ibdev,
  struct nvme_rdma_qe *ring, size_t ib_queue_size,
  size_t capsule_size, enum dma_data_direction dir)
{
 int i;

 for (i = 0; i < ib_queue_size; i++)
  nvme_rdma_free_qe(ibdev, &ring[i], capsule_size, dir);
 kfree(ring);
}
