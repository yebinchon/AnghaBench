
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int reset_module; scalar_t__ of_reset; } ;


 scalar_t__ VFIO_PLATFORM_IS_ACPI (struct vfio_platform_device*) ;
 int module_put (int ) ;

__attribute__((used)) static void vfio_platform_put_reset(struct vfio_platform_device *vdev)
{
 if (VFIO_PLATFORM_IS_ACPI(vdev))
  return;

 if (vdev->of_reset)
  module_put(vdev->reset_module);
}
