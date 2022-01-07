
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;
struct device {int dummy; } ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 int unregister_virtio_device (struct virtio_device*) ;

int rproc_remove_virtio_dev(struct device *dev, void *data)
{
 struct virtio_device *vdev = dev_to_virtio(dev);

 unregister_virtio_device(vdev);
 return 0;
}
