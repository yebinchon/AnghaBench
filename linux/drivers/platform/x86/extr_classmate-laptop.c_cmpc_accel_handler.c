
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int dev; int handle; } ;
typedef int acpi_status ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int cmpc_get_accel (int ,unsigned char*,unsigned char*,unsigned char*) ;
 struct input_dev* dev_get_drvdata (int *) ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cmpc_accel_handler(struct acpi_device *dev, u32 event)
{
 if (event == 0x81) {
  unsigned char x, y, z;
  acpi_status status;

  status = cmpc_get_accel(dev->handle, &x, &y, &z);
  if (ACPI_SUCCESS(status)) {
   struct input_dev *inputdev = dev_get_drvdata(&dev->dev);

   input_report_abs(inputdev, ABS_X, x);
   input_report_abs(inputdev, ABS_Y, y);
   input_report_abs(inputdev, ABS_Z, z);
   input_sync(inputdev);
  }
 }
}
