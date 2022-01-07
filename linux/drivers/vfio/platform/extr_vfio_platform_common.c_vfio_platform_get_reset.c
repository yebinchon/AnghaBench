
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {void* of_reset; int reset_module; int compat; } ;


 int ENOENT ;
 scalar_t__ VFIO_PLATFORM_IS_ACPI (struct vfio_platform_device*) ;
 int request_module (char*,int ) ;
 scalar_t__ vfio_platform_acpi_has_reset (struct vfio_platform_device*) ;
 void* vfio_platform_lookup_reset (int ,int *) ;

__attribute__((used)) static int vfio_platform_get_reset(struct vfio_platform_device *vdev)
{
 if (VFIO_PLATFORM_IS_ACPI(vdev))
  return vfio_platform_acpi_has_reset(vdev) ? 0 : -ENOENT;

 vdev->of_reset = vfio_platform_lookup_reset(vdev->compat,
          &vdev->reset_module);
 if (!vdev->of_reset) {
  request_module("vfio-reset:%s", vdev->compat);
  vdev->of_reset = vfio_platform_lookup_reset(vdev->compat,
       &vdev->reset_module);
 }

 return vdev->of_reset ? 0 : -ENOENT;
}
