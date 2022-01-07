
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_platform_device {int acpihid; int name; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 scalar_t__ WARN_ON (int) ;
 int acpi_device_hid (struct acpi_device*) ;
 scalar_t__ acpi_disabled ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static int vfio_platform_acpi_probe(struct vfio_platform_device *vdev,
        struct device *dev)
{
 struct acpi_device *adev;

 if (acpi_disabled)
  return -ENOENT;

 adev = ACPI_COMPANION(dev);
 if (!adev) {
  dev_err(dev, "ACPI companion device not found for %s\n",
   vdev->name);
  return -ENODEV;
 }




 return WARN_ON(!vdev->acpihid) ? -EINVAL : 0;
}
