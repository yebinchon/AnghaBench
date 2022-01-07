
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dummy; } ;
struct virtio_ccw_device {TYPE_1__* cdev; } ;
struct TYPE_2__ {int dev; } ;


 char const* dev_name (int *) ;
 struct virtio_ccw_device* to_vc_device (struct virtio_device*) ;

__attribute__((used)) static const char *virtio_ccw_bus_name(struct virtio_device *vdev)
{
 struct virtio_ccw_device *vcdev = to_vc_device(vdev);

 return dev_name(&vcdev->cdev->dev);
}
