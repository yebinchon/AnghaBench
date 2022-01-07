
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int lock; } ;


 int EOPNOTSUPP ;


 TYPE_1__* matrix_dev ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_ap_mdev_get_device_info (unsigned long) ;
 int vfio_ap_mdev_reset_queues (struct mdev_device*) ;

__attribute__((used)) static ssize_t vfio_ap_mdev_ioctl(struct mdev_device *mdev,
        unsigned int cmd, unsigned long arg)
{
 int ret;

 mutex_lock(&matrix_dev->lock);
 switch (cmd) {
 case 129:
  ret = vfio_ap_mdev_get_device_info(arg);
  break;
 case 128:
  ret = vfio_ap_mdev_reset_queues(mdev);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }
 mutex_unlock(&matrix_dev->lock);

 return ret;
}
