
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct cmpc_accel {int inputdev_state; int g_select; int sensitivity; } ;
struct acpi_device {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int CMPC_ACCEL_DEV_STATE_OPEN ;
 int EIO ;
 int cmpc_accel_set_g_select_v4 (int ,int ) ;
 int cmpc_accel_set_sensitivity_v4 (int ,int ) ;
 int cmpc_start_accel_v4 (int ) ;
 struct cmpc_accel* dev_get_drvdata (TYPE_1__*) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static int cmpc_accel_open_v4(struct input_dev *input)
{
 struct acpi_device *acpi;
 struct cmpc_accel *accel;

 acpi = to_acpi_device(input->dev.parent);
 accel = dev_get_drvdata(&input->dev);

 cmpc_accel_set_sensitivity_v4(acpi->handle, accel->sensitivity);
 cmpc_accel_set_g_select_v4(acpi->handle, accel->g_select);

 if (ACPI_SUCCESS(cmpc_start_accel_v4(acpi->handle))) {
  accel->inputdev_state = CMPC_ACCEL_DEV_STATE_OPEN;
  return 0;
 }
 return -EIO;
}
