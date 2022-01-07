
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {scalar_t__ of_reset; } ;


 scalar_t__ VFIO_PLATFORM_IS_ACPI (struct vfio_platform_device*) ;
 int vfio_platform_acpi_has_reset (struct vfio_platform_device*) ;

__attribute__((used)) static bool vfio_platform_has_reset(struct vfio_platform_device *vdev)
{
 if (VFIO_PLATFORM_IS_ACPI(vdev))
  return vfio_platform_acpi_has_reset(vdev);

 return vdev->of_reset ? 1 : 0;
}
