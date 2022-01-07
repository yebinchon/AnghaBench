
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_device_info {int flags; int num_irqs; scalar_t__ num_regions; } ;
struct vfio_ccw_private {scalar_t__ num_regions; } ;
struct mdev_device {int dummy; } ;


 int VFIO_CCW_NUM_IRQS ;
 scalar_t__ VFIO_CCW_NUM_REGIONS ;
 int VFIO_DEVICE_FLAGS_CCW ;
 int VFIO_DEVICE_FLAGS_RESET ;
 struct vfio_ccw_private* dev_get_drvdata (int ) ;
 int mdev_parent_dev (struct mdev_device*) ;

__attribute__((used)) static int vfio_ccw_mdev_get_device_info(struct vfio_device_info *info,
      struct mdev_device *mdev)
{
 struct vfio_ccw_private *private;

 private = dev_get_drvdata(mdev_parent_dev(mdev));
 info->flags = VFIO_DEVICE_FLAGS_CCW | VFIO_DEVICE_FLAGS_RESET;
 info->num_regions = VFIO_CCW_NUM_REGIONS + private->num_regions;
 info->num_irqs = VFIO_CCW_NUM_IRQS;

 return 0;
}
