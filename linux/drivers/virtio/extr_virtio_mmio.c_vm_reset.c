
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_mmio_device {scalar_t__ base; } ;
struct virtio_device {int dummy; } ;


 scalar_t__ VIRTIO_MMIO_STATUS ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void vm_reset(struct virtio_device *vdev)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);


 writel(0, vm_dev->base + VIRTIO_MMIO_STATUS);
}
