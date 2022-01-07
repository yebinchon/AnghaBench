
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {unsigned int index; struct virtio_mmio_vq_info* priv; int vdev; } ;
struct virtio_mmio_vq_info {int node; } ;
struct virtio_mmio_device {int version; scalar_t__ base; int lock; } ;


 scalar_t__ VIRTIO_MMIO_QUEUE_PFN ;
 scalar_t__ VIRTIO_MMIO_QUEUE_READY ;
 scalar_t__ VIRTIO_MMIO_QUEUE_SEL ;
 int WARN_ON (int ) ;
 int kfree (struct virtio_mmio_vq_info*) ;
 int list_del (int *) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_mmio_device* to_virtio_mmio_device (int ) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void vm_del_vq(struct virtqueue *vq)
{
 struct virtio_mmio_device *vm_dev = to_virtio_mmio_device(vq->vdev);
 struct virtio_mmio_vq_info *info = vq->priv;
 unsigned long flags;
 unsigned int index = vq->index;

 spin_lock_irqsave(&vm_dev->lock, flags);
 list_del(&info->node);
 spin_unlock_irqrestore(&vm_dev->lock, flags);


 writel(index, vm_dev->base + VIRTIO_MMIO_QUEUE_SEL);
 if (vm_dev->version == 1) {
  writel(0, vm_dev->base + VIRTIO_MMIO_QUEUE_PFN);
 } else {
  writel(0, vm_dev->base + VIRTIO_MMIO_QUEUE_READY);
  WARN_ON(readl(vm_dev->base + VIRTIO_MMIO_QUEUE_READY));
 }

 vring_del_virtqueue(vq);

 kfree(info);
}
