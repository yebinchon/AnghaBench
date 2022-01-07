
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct ap_matrix_mdev {int group_notifier; int iommu_notifier; TYPE_4__* kvm; } ;
struct TYPE_6__ {int * pqap_hook; } ;
struct TYPE_7__ {TYPE_1__ crypto; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;
struct TYPE_8__ {int lock; } ;


 int THIS_MODULE ;
 int VFIO_GROUP_NOTIFY ;
 int VFIO_IOMMU_NOTIFY ;
 int kvm_arch_crypto_clear_masks (TYPE_4__*) ;
 int kvm_put_kvm (TYPE_4__*) ;
 TYPE_3__* matrix_dev ;
 int mdev_dev (struct mdev_device*) ;
 struct ap_matrix_mdev* mdev_get_drvdata (struct mdev_device*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_ap_mdev_reset_queues (struct mdev_device*) ;
 int vfio_unregister_notifier (int ,int ,int *) ;

__attribute__((used)) static void vfio_ap_mdev_release(struct mdev_device *mdev)
{
 struct ap_matrix_mdev *matrix_mdev = mdev_get_drvdata(mdev);

 mutex_lock(&matrix_dev->lock);
 if (matrix_mdev->kvm) {
  kvm_arch_crypto_clear_masks(matrix_mdev->kvm);
  matrix_mdev->kvm->arch.crypto.pqap_hook = ((void*)0);
  vfio_ap_mdev_reset_queues(mdev);
  kvm_put_kvm(matrix_mdev->kvm);
  matrix_mdev->kvm = ((void*)0);
 }
 mutex_unlock(&matrix_dev->lock);

 vfio_unregister_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY,
     &matrix_mdev->iommu_notifier);
 vfio_unregister_notifier(mdev_dev(mdev), VFIO_GROUP_NOTIFY,
     &matrix_mdev->group_notifier);
 module_put(THIS_MODULE);
}
