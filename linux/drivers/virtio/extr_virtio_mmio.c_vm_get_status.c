
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtio_mmio_device {scalar_t__ base; } ;
struct virtio_device {int dummy; } ;


 scalar_t__ VIRTIO_MMIO_STATUS ;
 int readl (scalar_t__) ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;

__attribute__((used)) static u8 vm_get_status(struct virtio_device *vdev)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);

 return readl(vm_dev->base + VIRTIO_MMIO_STATUS) & 0xff;
}
