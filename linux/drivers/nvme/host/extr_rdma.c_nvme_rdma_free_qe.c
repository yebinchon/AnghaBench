
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_qe {int data; int dma; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ib_dma_unmap_single (struct ib_device*,int ,size_t,int) ;
 int kfree (int ) ;

__attribute__((used)) static void nvme_rdma_free_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
  size_t capsule_size, enum dma_data_direction dir)
{
 ib_dma_unmap_single(ibdev, qe->dma, capsule_size, dir);
 kfree(qe->data);
}
