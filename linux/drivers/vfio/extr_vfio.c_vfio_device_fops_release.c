
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_device {int group; int device_data; TYPE_1__* ops; } ;
struct inode {int dummy; } ;
struct file {struct vfio_device* private_data; } ;
struct TYPE_2__ {int (* release ) (int ) ;} ;


 int stub1 (int ) ;
 int vfio_device_put (struct vfio_device*) ;
 int vfio_group_try_dissolve_container (int ) ;

__attribute__((used)) static int vfio_device_fops_release(struct inode *inode, struct file *filep)
{
 struct vfio_device *device = filep->private_data;

 device->ops->release(device->device_data);

 vfio_group_try_dissolve_container(device->group);

 vfio_device_put(device);

 return 0;
}
