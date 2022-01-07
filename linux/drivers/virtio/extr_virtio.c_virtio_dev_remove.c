
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtio_driver {int (* remove ) (struct virtio_device*) ;} ;
struct TYPE_3__ {int driver; } ;
struct virtio_device {TYPE_2__* config; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* get_status ) (struct virtio_device*) ;} ;


 int VIRTIO_CONFIG_S_ACKNOWLEDGE ;
 int WARN_ON_ONCE (int ) ;
 struct virtio_device* dev_to_virtio (struct device*) ;
 struct virtio_driver* drv_to_virtio (int ) ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;
 int virtio_add_status (struct virtio_device*,int ) ;
 int virtio_config_disable (struct virtio_device*) ;

__attribute__((used)) static int virtio_dev_remove(struct device *_d)
{
 struct virtio_device *dev = dev_to_virtio(_d);
 struct virtio_driver *drv = drv_to_virtio(dev->dev.driver);

 virtio_config_disable(dev);

 drv->remove(dev);


 WARN_ON_ONCE(dev->config->get_status(dev));


 virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
 return 0;
}
