
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; int swbit; int evbit; } ;
struct acpi_device {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int EV_SW ;
 int SW_TABLET_MODE ;
 int cmpc_get_tablet (int ,unsigned long long*) ;
 int input_report_switch (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int set_bit (int ,int ) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static void cmpc_tablet_idev_init(struct input_dev *inputdev)
{
 unsigned long long val = 0;
 struct acpi_device *acpi;

 set_bit(EV_SW, inputdev->evbit);
 set_bit(SW_TABLET_MODE, inputdev->swbit);

 acpi = to_acpi_device(inputdev->dev.parent);
 if (ACPI_SUCCESS(cmpc_get_tablet(acpi->handle, &val))) {
  input_report_switch(inputdev, SW_TABLET_MODE, !val);
  input_sync(inputdev);
 }
}
