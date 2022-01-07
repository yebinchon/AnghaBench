
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;

__attribute__((used)) static int rbtn_get(struct acpi_device *device)
{
 unsigned long long output;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "GRBT", ((void*)0), &output);
 if (ACPI_FAILURE(status))
  return -EINVAL;

 return !output;
}
