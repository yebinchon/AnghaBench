
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int dev; } ;


 int ARRAY_SIZE (int*) ;
 int KEY_MAX ;
 int* cmpc_keys_codes ;
 struct input_dev* dev_get_drvdata (int *) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cmpc_keys_handler(struct acpi_device *dev, u32 event)
{
 struct input_dev *inputdev;
 int code = KEY_MAX;

 if ((event & 0x0F) < ARRAY_SIZE(cmpc_keys_codes))
  code = cmpc_keys_codes[event & 0x0F];
 inputdev = dev_get_drvdata(&dev->dev);
 input_report_key(inputdev, code, !(event & 0x10));
 input_sync(inputdev);
}
