
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct virtio_mmio_device {scalar_t__ base; } ;
struct virtio_device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ VIRTIO_MMIO_STATUS ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void vm_set_status(struct virtio_device *vdev, u8 status)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);


 BUG_ON(status == 0);

 writel(status, vm_dev->base + VIRTIO_MMIO_STATUS);
}
