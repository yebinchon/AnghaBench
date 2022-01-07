
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_driver {int (* config_changed ) (struct virtio_device*) ;} ;
struct TYPE_2__ {int driver; } ;
struct virtio_device {int config_change_pending; int config_enabled; TYPE_1__ dev; } ;


 struct virtio_driver* drv_to_virtio (int ) ;
 int stub1 (struct virtio_device*) ;

__attribute__((used)) static void __virtio_config_changed(struct virtio_device *dev)
{
 struct virtio_driver *drv = drv_to_virtio(dev->dev.driver);

 if (!dev->config_enabled)
  dev->config_change_pending = 1;
 else if (drv && drv->config_changed)
  drv->config_changed(dev);
}
