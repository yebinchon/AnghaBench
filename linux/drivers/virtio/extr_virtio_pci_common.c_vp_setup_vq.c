
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct virtqueue {int dummy; } ;
struct virtio_pci_vq_info {int node; struct virtqueue* vq; } ;
struct virtio_pci_device {struct virtio_pci_vq_info** vqs; int lock; int virtqueues; struct virtqueue* (* setup_vq ) (struct virtio_pci_device*,struct virtio_pci_vq_info*,unsigned int,void (*) (struct virtqueue*),char const*,int,int ) ;} ;
struct virtio_device {int dummy; } ;


 int ENOMEM ;
 struct virtqueue* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct virtqueue*) ;
 int kfree (struct virtio_pci_vq_info*) ;
 struct virtio_pci_vq_info* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtqueue* stub1 (struct virtio_pci_device*,struct virtio_pci_vq_info*,unsigned int,void (*) (struct virtqueue*),char const*,int,int ) ;
 struct virtio_pci_device* to_vp_device (struct virtio_device*) ;

__attribute__((used)) static struct virtqueue *vp_setup_vq(struct virtio_device *vdev, unsigned index,
         void (*callback)(struct virtqueue *vq),
         const char *name,
         bool ctx,
         u16 msix_vec)
{
 struct virtio_pci_device *vp_dev = to_vp_device(vdev);
 struct virtio_pci_vq_info *info = kmalloc(sizeof *info, GFP_KERNEL);
 struct virtqueue *vq;
 unsigned long flags;


 if (!info)
  return ERR_PTR(-ENOMEM);

 vq = vp_dev->setup_vq(vp_dev, info, index, callback, name, ctx,
         msix_vec);
 if (IS_ERR(vq))
  goto out_info;

 info->vq = vq;
 if (callback) {
  spin_lock_irqsave(&vp_dev->lock, flags);
  list_add(&info->node, &vp_dev->virtqueues);
  spin_unlock_irqrestore(&vp_dev->lock, flags);
 } else {
  INIT_LIST_HEAD(&info->node);
 }

 vp_dev->vqs[index] = info;
 return vq;

out_info:
 kfree(info);
 return vq;
}
