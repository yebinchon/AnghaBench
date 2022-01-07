
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct acpi_device {int handle; } ;


 int cmpc_stop_accel (int ) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static void cmpc_accel_close(struct input_dev *input)
{
 struct acpi_device *acpi;

 acpi = to_acpi_device(input->dev.parent);
 cmpc_stop_accel(acpi->handle);
}
