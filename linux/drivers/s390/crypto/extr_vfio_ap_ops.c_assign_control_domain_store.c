
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {unsigned long adm_max; int adm; } ;
struct ap_matrix_mdev {TYPE_1__ matrix; scalar_t__ kvm; } ;
typedef int ssize_t ;
struct TYPE_4__ {int lock; } ;


 int EBUSY ;
 int ENODEV ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 TYPE_2__* matrix_dev ;
 struct mdev_device* mdev_from_dev (struct device*) ;
 struct ap_matrix_mdev* mdev_get_drvdata (struct mdev_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit_inv (unsigned long,int ) ;

__attribute__((used)) static ssize_t assign_control_domain_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int ret;
 unsigned long id;
 struct mdev_device *mdev = mdev_from_dev(dev);
 struct ap_matrix_mdev *matrix_mdev = mdev_get_drvdata(mdev);


 if (matrix_mdev->kvm)
  return -EBUSY;

 ret = kstrtoul(buf, 0, &id);
 if (ret)
  return ret;

 if (id > matrix_mdev->matrix.adm_max)
  return -ENODEV;






 mutex_lock(&matrix_dev->lock);
 set_bit_inv(id, matrix_mdev->matrix.adm);
 mutex_unlock(&matrix_dev->lock);

 return count;
}
