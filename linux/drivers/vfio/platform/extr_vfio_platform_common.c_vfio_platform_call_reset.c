
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int (* of_reset ) (struct vfio_platform_device*) ;int device; } ;


 int EINVAL ;
 scalar_t__ VFIO_PLATFORM_IS_ACPI (struct vfio_platform_device*) ;
 int dev_info (int ,char*) ;
 int dev_warn (int ,char*) ;
 int stub1 (struct vfio_platform_device*) ;
 int vfio_platform_acpi_call_reset (struct vfio_platform_device*,char const**) ;

__attribute__((used)) static int vfio_platform_call_reset(struct vfio_platform_device *vdev,
        const char **extra_dbg)
{
 if (VFIO_PLATFORM_IS_ACPI(vdev)) {
  dev_info(vdev->device, "reset\n");
  return vfio_platform_acpi_call_reset(vdev, extra_dbg);
 } else if (vdev->of_reset) {
  dev_info(vdev->device, "reset\n");
  return vdev->of_reset(vdev);
 }

 dev_warn(vdev->device, "no reset function found!\n");
 return -EINVAL;
}
