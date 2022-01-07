
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * bus; } ;
struct virtio_device {int index; int config_enabled; int config_change_pending; TYPE_2__ dev; int vqs; TYPE_1__* config; int config_lock; } ;
struct TYPE_5__ {int (* reset ) (struct virtio_device*) ;} ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VIRTIO_CONFIG_S_ACKNOWLEDGE ;
 int VIRTIO_CONFIG_S_FAILED ;
 int dev_set_name (TYPE_2__*,char*,int) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int spin_lock_init (int *) ;
 int stub1 (struct virtio_device*) ;
 int virtio_add_status (struct virtio_device*,int ) ;
 int virtio_bus ;
 int virtio_index_ida ;

int register_virtio_device(struct virtio_device *dev)
{
 int err;

 dev->dev.bus = &virtio_bus;
 device_initialize(&dev->dev);


 err = ida_simple_get(&virtio_index_ida, 0, 0, GFP_KERNEL);
 if (err < 0)
  goto out;

 dev->index = err;
 dev_set_name(&dev->dev, "virtio%u", dev->index);

 spin_lock_init(&dev->config_lock);
 dev->config_enabled = 0;
 dev->config_change_pending = 0;



 dev->config->reset(dev);


 virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);

 INIT_LIST_HEAD(&dev->vqs);





 err = device_add(&dev->dev);
 if (err)
  ida_simple_remove(&virtio_index_ida, dev->index);
out:
 if (err)
  virtio_add_status(dev, VIRTIO_CONFIG_S_FAILED);
 return err;
}
