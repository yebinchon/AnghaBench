
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface_button {int input; } ;
struct acpi_device {int dummy; } ;


 struct surface_button* acpi_driver_data (struct acpi_device*) ;
 int input_unregister_device (int ) ;
 int kfree (struct surface_button*) ;

__attribute__((used)) static int surface_button_remove(struct acpi_device *device)
{
 struct surface_button *button = acpi_driver_data(device);

 input_unregister_device(button->input);
 kfree(button);
 return 0;
}
