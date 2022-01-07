
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int handle; int dev; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int SW_TABLET_MODE ;
 int cmpc_get_tablet (int ,unsigned long long*) ;
 struct input_dev* dev_get_drvdata (int *) ;
 int input_report_switch (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cmpc_tablet_handler(struct acpi_device *dev, u32 event)
{
 unsigned long long val = 0;
 struct input_dev *inputdev = dev_get_drvdata(&dev->dev);

 if (event == 0x81) {
  if (ACPI_SUCCESS(cmpc_get_tablet(dev->handle, &val))) {
   input_report_switch(inputdev, SW_TABLET_MODE, !val);
   input_sync(inputdev);
  }
 }
}
