
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dev; TYPE_1__* config; } ;
struct TYPE_2__ {int (* finalize_features ) (struct virtio_device*) ;unsigned int (* get_status ) (struct virtio_device*) ;} ;


 int ENODEV ;
 unsigned int VIRTIO_CONFIG_S_FEATURES_OK ;
 int VIRTIO_F_VERSION_1 ;
 int dev_err (int *,char*,unsigned int) ;
 int might_sleep () ;
 int stub1 (struct virtio_device*) ;
 unsigned int stub2 (struct virtio_device*) ;
 int virtio_add_status (struct virtio_device*,unsigned int) ;
 int virtio_has_feature (struct virtio_device*,int ) ;

int virtio_finalize_features(struct virtio_device *dev)
{
 int ret = dev->config->finalize_features(dev);
 unsigned status;

 might_sleep();
 if (ret)
  return ret;

 if (!virtio_has_feature(dev, VIRTIO_F_VERSION_1))
  return 0;

 virtio_add_status(dev, VIRTIO_CONFIG_S_FEATURES_OK);
 status = dev->config->get_status(dev);
 if (!(status & VIRTIO_CONFIG_S_FEATURES_OK)) {
  dev_err(&dev->dev, "virtio: device refuses features: %x\n",
   status);
  return -ENODEV;
 }
 return 0;
}
