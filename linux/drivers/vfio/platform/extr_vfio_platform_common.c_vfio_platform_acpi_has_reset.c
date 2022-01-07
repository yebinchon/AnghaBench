
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {struct device* device; } ;
struct device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_HANDLE (struct device*) ;
 int acpi_has_method (int ,char*) ;

__attribute__((used)) static bool vfio_platform_acpi_has_reset(struct vfio_platform_device *vdev)
{






 return 0;

}
