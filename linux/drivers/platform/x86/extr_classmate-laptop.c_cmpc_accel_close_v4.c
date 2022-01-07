
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct cmpc_accel {int inputdev_state; } ;
struct acpi_device {int handle; } ;


 int CMPC_ACCEL_DEV_STATE_CLOSED ;
 int cmpc_stop_accel_v4 (int ) ;
 struct cmpc_accel* dev_get_drvdata (TYPE_1__*) ;
 struct acpi_device* to_acpi_device (int ) ;

__attribute__((used)) static void cmpc_accel_close_v4(struct input_dev *input)
{
 struct acpi_device *acpi;
 struct cmpc_accel *accel;

 acpi = to_acpi_device(input->dev.parent);
 accel = dev_get_drvdata(&input->dev);

 cmpc_stop_accel_v4(acpi->handle);
 accel->inputdev_state = CMPC_ACCEL_DEV_STATE_CLOSED;
}
