
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {size_t index; int vdev; } ;
struct virtio_pci_vq_info {int node; } ;
struct virtio_pci_device {int (* del_vq ) (struct virtio_pci_vq_info*) ;int lock; struct virtio_pci_vq_info** vqs; } ;


 int kfree (struct virtio_pci_vq_info*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct virtio_pci_vq_info*) ;
 struct virtio_pci_device* to_vp_device (int ) ;

__attribute__((used)) static void vp_del_vq(struct virtqueue *vq)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);
 struct virtio_pci_vq_info *info = vp_dev->vqs[vq->index];
 unsigned long flags;

 spin_lock_irqsave(&vp_dev->lock, flags);
 list_del(&info->node);
 spin_unlock_irqrestore(&vp_dev->lock, flags);

 vp_dev->del_vq(info);
 kfree(info);
}
