
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_qe {int * data; int dma; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ib_dma_map_single (struct ib_device*,int *,size_t,int) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;

__attribute__((used)) static int nvme_rdma_alloc_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
  size_t capsule_size, enum dma_data_direction dir)
{
 qe->data = kzalloc(capsule_size, GFP_KERNEL);
 if (!qe->data)
  return -ENOMEM;

 qe->dma = ib_dma_map_single(ibdev, qe->data, capsule_size, dir);
 if (ib_dma_mapping_error(ibdev, qe->dma)) {
  kfree(qe->data);
  qe->data = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
