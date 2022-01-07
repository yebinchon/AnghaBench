
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct ap_matrix_mdev {int node; scalar_t__ kvm; } ;
struct TYPE_2__ {int available_instances; int lock; } ;


 int EBUSY ;
 int atomic_inc (int *) ;
 int kfree (struct ap_matrix_mdev*) ;
 int list_del (int *) ;
 TYPE_1__* matrix_dev ;
 struct ap_matrix_mdev* mdev_get_drvdata (struct mdev_device*) ;
 int mdev_set_drvdata (struct mdev_device*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_ap_mdev_reset_queues (struct mdev_device*) ;

__attribute__((used)) static int vfio_ap_mdev_remove(struct mdev_device *mdev)
{
 struct ap_matrix_mdev *matrix_mdev = mdev_get_drvdata(mdev);

 if (matrix_mdev->kvm)
  return -EBUSY;

 mutex_lock(&matrix_dev->lock);
 vfio_ap_mdev_reset_queues(mdev);
 list_del(&matrix_mdev->node);
 mutex_unlock(&matrix_dev->lock);

 kfree(matrix_mdev);
 mdev_set_drvdata(mdev, ((void*)0));
 atomic_inc(&matrix_dev->available_instances);

 return 0;
}
