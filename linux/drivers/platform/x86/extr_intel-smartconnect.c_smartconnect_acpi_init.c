
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; int dev; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_execute_simple_method (int ,char*,int ) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int smartconnect_acpi_init(struct acpi_device *acpi)
{
 unsigned long long value;
 acpi_status status;

 status = acpi_evaluate_integer(acpi->handle, "GAOS", ((void*)0), &value);
 if (ACPI_FAILURE(status))
  return -EINVAL;

 if (value & 0x1) {
  dev_info(&acpi->dev, "Disabling Intel Smart Connect\n");
  status = acpi_execute_simple_method(acpi->handle, "SAOS", 0);
 }

 return 0;
}
