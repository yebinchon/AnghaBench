
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_parent {TYPE_1__* ops; } ;
struct mdev_device {struct mdev_parent* parent; } ;
struct TYPE_2__ {long (* ioctl ) (struct mdev_device*,unsigned int,unsigned long) ;} ;


 long EINVAL ;
 long stub1 (struct mdev_device*,unsigned int,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long vfio_mdev_unlocked_ioctl(void *device_data,
         unsigned int cmd, unsigned long arg)
{
 struct mdev_device *mdev = device_data;
 struct mdev_parent *parent = mdev->parent;

 if (unlikely(!parent->ops->ioctl))
  return -EINVAL;

 return parent->ops->ioctl(mdev, cmd, arg);
}
