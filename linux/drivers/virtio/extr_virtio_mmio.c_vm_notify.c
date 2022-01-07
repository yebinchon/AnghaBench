
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int index; int vdev; } ;
struct virtio_mmio_device {scalar_t__ base; } ;


 scalar_t__ VIRTIO_MMIO_QUEUE_NOTIFY ;
 struct virtio_mmio_device* to_virtio_mmio_device (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static bool vm_notify(struct virtqueue *vq)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vq->vdev);



 writel(vq->index, vm_dev->base + VIRTIO_MMIO_QUEUE_NOTIFY);
 return 1;
}
