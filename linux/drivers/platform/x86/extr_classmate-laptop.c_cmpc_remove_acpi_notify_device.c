
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct acpi_device {int dev; } ;


 struct input_dev* dev_get_drvdata (int *) ;
 int input_unregister_device (struct input_dev*) ;

__attribute__((used)) static int cmpc_remove_acpi_notify_device(struct acpi_device *acpi)
{
 struct input_dev *inputdev = dev_get_drvdata(&acpi->dev);
 input_unregister_device(inputdev);
 return 0;
}
