
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int virtio_has_iommu_quirk (struct virtio_device*) ;
 scalar_t__ xen_domain () ;

__attribute__((used)) static bool vring_use_dma_api(struct virtio_device *vdev)
{
 if (!virtio_has_iommu_quirk(vdev))
  return 1;
 if (xen_domain())
  return 1;

 return 0;
}
