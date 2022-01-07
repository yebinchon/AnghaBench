
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct acpi_device {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int EIO ;
 int cmpc_start_accel (int ) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static int cmpc_accel_open(struct input_dev *input)
{
 struct acpi_device *acpi;

 acpi = to_acpi_device(input->dev.parent);
 if (ACPI_SUCCESS(cmpc_start_accel(acpi->handle)))
  return 0;
 return -EIO;
}
