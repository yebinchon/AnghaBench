
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct input_dev {char* name; TYPE_1__ dev; } ;
struct acpi_device {int dev; } ;
typedef int (* input_device_init ) (struct input_dev*) ;


 int ENOMEM ;
 int dev_set_drvdata (int *,struct input_dev*) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;

__attribute__((used)) static int cmpc_add_acpi_notify_device(struct acpi_device *acpi, char *name,
           input_device_init idev_init)
{
 struct input_dev *inputdev;
 int error;

 inputdev = input_allocate_device();
 if (!inputdev)
  return -ENOMEM;
 inputdev->name = name;
 inputdev->dev.parent = &acpi->dev;
 idev_init(inputdev);
 error = input_register_device(inputdev);
 if (error) {
  input_free_device(inputdev);
  return error;
 }
 dev_set_drvdata(&acpi->dev, inputdev);
 return 0;
}
