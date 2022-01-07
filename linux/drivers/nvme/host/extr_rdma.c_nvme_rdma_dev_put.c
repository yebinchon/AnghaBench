
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_device {int ref; } ;


 int kref_put (int *,int ) ;
 int nvme_rdma_free_dev ;

__attribute__((used)) static void nvme_rdma_dev_put(struct nvme_rdma_device *dev)
{
 kref_put(&dev->ref, nvme_rdma_free_dev);
}
