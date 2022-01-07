
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct TYPE_3__ {int notifier_call; } ;
struct ap_matrix_mdev {TYPE_1__ group_notifier; TYPE_1__ iommu_notifier; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int VFIO_GROUP_NOTIFY ;
 unsigned long VFIO_GROUP_NOTIFY_SET_KVM ;
 int VFIO_IOMMU_NOTIFY ;
 unsigned long VFIO_IOMMU_NOTIFY_DMA_UNMAP ;
 int mdev_dev (struct mdev_device*) ;
 struct ap_matrix_mdev* mdev_get_drvdata (struct mdev_device*) ;
 int module_put (int ) ;
 int try_module_get (int ) ;
 int vfio_ap_mdev_group_notifier ;
 int vfio_ap_mdev_iommu_notifier ;
 int vfio_register_notifier (int ,int ,unsigned long*,TYPE_1__*) ;
 int vfio_unregister_notifier (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int vfio_ap_mdev_open(struct mdev_device *mdev)
{
 struct ap_matrix_mdev *matrix_mdev = mdev_get_drvdata(mdev);
 unsigned long events;
 int ret;


 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 matrix_mdev->group_notifier.notifier_call = vfio_ap_mdev_group_notifier;
 events = VFIO_GROUP_NOTIFY_SET_KVM;

 ret = vfio_register_notifier(mdev_dev(mdev), VFIO_GROUP_NOTIFY,
         &events, &matrix_mdev->group_notifier);
 if (ret) {
  module_put(THIS_MODULE);
  return ret;
 }

 matrix_mdev->iommu_notifier.notifier_call = vfio_ap_mdev_iommu_notifier;
 events = VFIO_IOMMU_NOTIFY_DMA_UNMAP;
 ret = vfio_register_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY,
         &events, &matrix_mdev->iommu_notifier);
 if (!ret)
  return ret;

 vfio_unregister_notifier(mdev_dev(mdev), VFIO_GROUP_NOTIFY,
     &matrix_mdev->group_notifier);
 module_put(THIS_MODULE);
 return ret;
}
