
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int dummy; } ;


 scalar_t__ __nvme_disable_io_queues (struct nvme_dev*,int ) ;
 int nvme_admin_delete_cq ;
 int nvme_admin_delete_sq ;

__attribute__((used)) static void nvme_disable_io_queues(struct nvme_dev *dev)
{
 if (__nvme_disable_io_queues(dev, nvme_admin_delete_sq))
  __nvme_disable_io_queues(dev, nvme_admin_delete_cq);
}
