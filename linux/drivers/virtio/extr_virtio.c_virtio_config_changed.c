
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int config_lock; } ;


 int __virtio_config_changed (struct virtio_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void virtio_config_changed(struct virtio_device *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->config_lock, flags);
 __virtio_config_changed(dev);
 spin_unlock_irqrestore(&dev->config_lock, flags);
}
