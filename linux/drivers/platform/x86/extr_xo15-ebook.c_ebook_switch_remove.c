
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebook_switch {int input; } ;
struct acpi_device {int dummy; } ;


 struct ebook_switch* acpi_driver_data (struct acpi_device*) ;
 int input_unregister_device (int ) ;
 int kfree (struct ebook_switch*) ;

__attribute__((used)) static int ebook_switch_remove(struct acpi_device *device)
{
 struct ebook_switch *button = acpi_driver_data(device);

 input_unregister_device(button->input);
 kfree(button);
 return 0;
}
