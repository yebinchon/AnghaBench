
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int owner; int hook; } ;
struct ap_matrix_mdev {int node; TYPE_1__ pqap_hook; int matrix; struct mdev_device* mdev; } ;
struct TYPE_4__ {int lock; int mdev_list; int info; int available_instances; } ;


 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 scalar_t__ atomic_dec_if_positive (int *) ;
 int atomic_inc (int *) ;
 int handle_pqap ;
 struct ap_matrix_mdev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 TYPE_2__* matrix_dev ;
 int mdev_set_drvdata (struct mdev_device*,struct ap_matrix_mdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_ap_matrix_init (int *,int *) ;

__attribute__((used)) static int vfio_ap_mdev_create(struct kobject *kobj, struct mdev_device *mdev)
{
 struct ap_matrix_mdev *matrix_mdev;

 if ((atomic_dec_if_positive(&matrix_dev->available_instances) < 0))
  return -EPERM;

 matrix_mdev = kzalloc(sizeof(*matrix_mdev), GFP_KERNEL);
 if (!matrix_mdev) {
  atomic_inc(&matrix_dev->available_instances);
  return -ENOMEM;
 }

 matrix_mdev->mdev = mdev;
 vfio_ap_matrix_init(&matrix_dev->info, &matrix_mdev->matrix);
 mdev_set_drvdata(mdev, matrix_mdev);
 matrix_mdev->pqap_hook.hook = handle_pqap;
 matrix_mdev->pqap_hook.owner = THIS_MODULE;
 mutex_lock(&matrix_dev->lock);
 list_add(&matrix_mdev->node, &matrix_dev->mdev_list);
 mutex_unlock(&matrix_dev->lock);

 return 0;
}
