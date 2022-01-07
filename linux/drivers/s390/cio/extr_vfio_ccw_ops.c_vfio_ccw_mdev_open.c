
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int notifier_call; } ;
struct vfio_ccw_private {TYPE_1__ nb; } ;
struct mdev_device {int dummy; } ;


 int VFIO_IOMMU_NOTIFY ;
 unsigned long VFIO_IOMMU_NOTIFY_DMA_UNMAP ;
 struct vfio_ccw_private* dev_get_drvdata (int ) ;
 int mdev_dev (struct mdev_device*) ;
 int mdev_parent_dev (struct mdev_device*) ;
 int vfio_ccw_mdev_notifier ;
 int vfio_ccw_register_async_dev_regions (struct vfio_ccw_private*) ;
 int vfio_register_notifier (int ,int ,unsigned long*,TYPE_1__*) ;
 int vfio_unregister_notifier (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int vfio_ccw_mdev_open(struct mdev_device *mdev)
{
 struct vfio_ccw_private *private =
  dev_get_drvdata(mdev_parent_dev(mdev));
 unsigned long events = VFIO_IOMMU_NOTIFY_DMA_UNMAP;
 int ret;

 private->nb.notifier_call = vfio_ccw_mdev_notifier;

 ret = vfio_register_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY,
         &events, &private->nb);
 if (ret)
  return ret;

 ret = vfio_ccw_register_async_dev_regions(private);
 if (ret)
  vfio_unregister_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY,
      &private->nb);
 return ret;
}
