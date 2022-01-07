
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_device {int device_data; TYPE_1__* ops; } ;
struct file {struct vfio_device* private_data; } ;
struct TYPE_2__ {long (* ioctl ) (int ,unsigned int,unsigned long) ;} ;


 long EINVAL ;
 long stub1 (int ,unsigned int,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long vfio_device_fops_unl_ioctl(struct file *filep,
           unsigned int cmd, unsigned long arg)
{
 struct vfio_device *device = filep->private_data;

 if (unlikely(!device->ops->ioctl))
  return -EINVAL;

 return device->ops->ioctl(device->device_data, cmd, arg);
}
