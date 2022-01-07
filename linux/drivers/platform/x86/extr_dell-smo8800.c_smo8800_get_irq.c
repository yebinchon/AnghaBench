
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dev; int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int METHOD_NAME__CRS ;
 int acpi_walk_resources (int ,int ,int ,int *) ;
 int dev_err (int *,char*) ;
 int smo8800_get_resource ;

__attribute__((used)) static u32 smo8800_get_irq(struct acpi_device *device)
{
 u32 irq = 0;
 acpi_status status;

 status = acpi_walk_resources(device->handle, METHOD_NAME__CRS,
         smo8800_get_resource, &irq);
 if (ACPI_FAILURE(status)) {
  dev_err(&device->dev, "acpi_walk_resources failed\n");
  return 0;
 }

 return irq;
}
