
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int config_enabled; int config_change_pending; int config_lock; } ;


 int __virtio_config_changed (struct virtio_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void virtio_config_enable(struct virtio_device *dev)
{
 spin_lock_irq(&dev->config_lock);
 dev->config_enabled = 1;
 if (dev->config_change_pending)
  __virtio_config_changed(dev);
 dev->config_change_pending = 0;
 spin_unlock_irq(&dev->config_lock);
}
