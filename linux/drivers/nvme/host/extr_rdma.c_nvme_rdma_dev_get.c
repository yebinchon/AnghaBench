
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_rdma_device {int ref; } ;


 int kref_get_unless_zero (int *) ;

__attribute__((used)) static int nvme_rdma_dev_get(struct nvme_rdma_device *dev)
{
 return kref_get_unless_zero(&dev->ref);
}
