
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int dummy; } ;
struct acpi_device {int dummy; } ;


 int EINVAL ;
 struct acpi_processor* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct acpi_processor*) ;

__attribute__((used)) static int xen_acpi_processor_remove(struct acpi_device *device)
{
 struct acpi_processor *pr;

 if (!device)
  return -EINVAL;

 pr = acpi_driver_data(device);
 if (!pr)
  return -EINVAL;

 kfree(pr);
 return 0;
}
