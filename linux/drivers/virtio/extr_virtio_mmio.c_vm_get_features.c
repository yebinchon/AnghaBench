
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virtio_mmio_device {scalar_t__ base; } ;
struct virtio_device {int dummy; } ;


 scalar_t__ VIRTIO_MMIO_DEVICE_FEATURES ;
 scalar_t__ VIRTIO_MMIO_DEVICE_FEATURES_SEL ;
 int readl (scalar_t__) ;
 struct virtio_mmio_device* to_virtio_mmio_device (struct virtio_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u64 vm_get_features(struct virtio_device *vdev)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vdev);
 u64 features;

 writel(1, vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES_SEL);
 features = readl(vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES);
 features <<= 32;

 writel(0, vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES_SEL);
 features |= readl(vm_dev->base + VIRTIO_MMIO_DEVICE_FEATURES);

 return features;
}
