
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct cmpc_accel {int sensitivity; } ;
struct acpi_device {int dev; int handle; } ;


 int CMPC_ACCEL_SENSITIVITY_DEFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cmpc_accel_idev_init ;
 int cmpc_accel_sensitivity_attr ;
 int cmpc_accel_set_sensitivity (int ,int ) ;
 int cmpc_add_acpi_notify_device (struct acpi_device*,char*,int ) ;
 struct input_dev* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,struct cmpc_accel*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int kfree (struct cmpc_accel*) ;
 struct cmpc_accel* kmalloc (int,int ) ;

__attribute__((used)) static int cmpc_accel_add(struct acpi_device *acpi)
{
 int error;
 struct input_dev *inputdev;
 struct cmpc_accel *accel;

 accel = kmalloc(sizeof(*accel), GFP_KERNEL);
 if (!accel)
  return -ENOMEM;

 accel->sensitivity = CMPC_ACCEL_SENSITIVITY_DEFAULT;
 cmpc_accel_set_sensitivity(acpi->handle, accel->sensitivity);

 error = device_create_file(&acpi->dev, &cmpc_accel_sensitivity_attr);
 if (error)
  goto failed_file;

 error = cmpc_add_acpi_notify_device(acpi, "cmpc_accel",
         cmpc_accel_idev_init);
 if (error)
  goto failed_input;

 inputdev = dev_get_drvdata(&acpi->dev);
 dev_set_drvdata(&inputdev->dev, accel);

 return 0;

failed_input:
 device_remove_file(&acpi->dev, &cmpc_accel_sensitivity_attr);
failed_file:
 kfree(accel);
 return error;
}
