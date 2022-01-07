
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebook_switch {int input; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int SW_TABLET_MODE ;
 struct ebook_switch* acpi_driver_data (struct acpi_device*) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int ebook_send_state(struct acpi_device *device)
{
 struct ebook_switch *button = acpi_driver_data(device);
 unsigned long long state;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, "EBK", ((void*)0), &state);
 if (ACPI_FAILURE(status))
  return -EIO;


 input_report_switch(button->input, SW_TABLET_MODE, !state);
 input_sync(button->input);
 return 0;
}
