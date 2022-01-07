
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_mmio_device {int version; scalar_t__ base; } ;
struct virtio_device {int dummy; } ;


 scalar_t__ VIRTIO_MMIO_CONFIG_GENERATION ;
 int readl (scalar_t__) ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;

__attribute__((used)) static u32 vm_generation(struct virtio_device *vdev)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);

 if (vm_dev->version == 1)
  return 0;
 else
  return readl(vm_dev->base + VIRTIO_MMIO_CONFIG_GENERATION);
}
