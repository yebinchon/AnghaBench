
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_mmio_device {int version; scalar_t__ base; } ;
struct virtio_device {int features; int dev; } ;


 int EINVAL ;
 int VIRTIO_F_VERSION_1 ;
 scalar_t__ VIRTIO_MMIO_DRIVER_FEATURES ;
 scalar_t__ VIRTIO_MMIO_DRIVER_FEATURES_SEL ;
 int __virtio_test_bit (struct virtio_device*,int ) ;
 int dev_err (int *,char*) ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;
 int vring_transport_features (struct virtio_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int vm_finalize_features(struct virtio_device *vdev)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);


 vring_transport_features(vdev);


 if (vm_dev->version == 2 &&
   !__virtio_test_bit(vdev, VIRTIO_F_VERSION_1)) {
  dev_err(&vdev->dev, "New virtio-mmio devices (version 2) must provide VIRTIO_F_VERSION_1 feature!\n");
  return -EINVAL;
 }

 writel(1, vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES_SEL);
 writel((u32)(vdev->features >> 32),
   vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES);

 writel(0, vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES_SEL);
 writel((u32)vdev->features,
   vm_dev->base + VIRTIO_MMIO_DRIVER_FEATURES);

 return 0;
}
