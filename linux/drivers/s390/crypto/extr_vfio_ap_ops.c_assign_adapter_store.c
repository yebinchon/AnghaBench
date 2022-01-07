
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {unsigned long apm_max; int apm; } ;
struct ap_matrix_mdev {TYPE_1__ matrix; scalar_t__ kvm; } ;
typedef int ssize_t ;
struct TYPE_4__ {int lock; } ;


 int EBUSY ;
 int ENODEV ;
 int clear_bit_inv (unsigned long,int ) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 TYPE_2__* matrix_dev ;
 struct mdev_device* mdev_from_dev (struct device*) ;
 struct ap_matrix_mdev* mdev_get_drvdata (struct mdev_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit_inv (unsigned long,int ) ;
 int vfio_ap_mdev_verify_no_sharing (struct ap_matrix_mdev*) ;
 int vfio_ap_mdev_verify_queues_reserved_for_apid (struct ap_matrix_mdev*,unsigned long) ;

__attribute__((used)) static ssize_t assign_adapter_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 int ret;
 unsigned long apid;
 struct mdev_device *mdev = mdev_from_dev(dev);
 struct ap_matrix_mdev *matrix_mdev = mdev_get_drvdata(mdev);


 if (matrix_mdev->kvm)
  return -EBUSY;

 ret = kstrtoul(buf, 0, &apid);
 if (ret)
  return ret;

 if (apid > matrix_mdev->matrix.apm_max)
  return -ENODEV;






 mutex_lock(&matrix_dev->lock);

 ret = vfio_ap_mdev_verify_queues_reserved_for_apid(matrix_mdev, apid);
 if (ret)
  goto done;

 set_bit_inv(apid, matrix_mdev->matrix.apm);

 ret = vfio_ap_mdev_verify_no_sharing(matrix_mdev);
 if (ret)
  goto share_err;

 ret = count;
 goto done;

share_err:
 clear_bit_inv(apid, matrix_mdev->matrix.apm);
done:
 mutex_unlock(&matrix_dev->lock);

 return ret;
}
