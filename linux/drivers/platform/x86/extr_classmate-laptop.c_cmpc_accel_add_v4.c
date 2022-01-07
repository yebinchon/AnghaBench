
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct cmpc_accel {int g_select; int sensitivity; int inputdev_state; } ;
struct acpi_device {int dev; int handle; } ;


 int CMPC_ACCEL_DEV_STATE_CLOSED ;
 int CMPC_ACCEL_G_SELECT_DEFAULT ;
 int CMPC_ACCEL_SENSITIVITY_DEFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cmpc_accel_g_select_attr_v4 ;
 int cmpc_accel_idev_init_v4 ;
 int cmpc_accel_sensitivity_attr_v4 ;
 int cmpc_accel_set_g_select_v4 (int ,int ) ;
 int cmpc_accel_set_sensitivity_v4 (int ,int ) ;
 int cmpc_add_acpi_notify_device (struct acpi_device*,char*,int ) ;
 struct input_dev* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,struct cmpc_accel*) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int kfree (struct cmpc_accel*) ;
 struct cmpc_accel* kmalloc (int,int ) ;

__attribute__((used)) static int cmpc_accel_add_v4(struct acpi_device *acpi)
{
 int error;
 struct input_dev *inputdev;
 struct cmpc_accel *accel;

 accel = kmalloc(sizeof(*accel), GFP_KERNEL);
 if (!accel)
  return -ENOMEM;

 accel->inputdev_state = CMPC_ACCEL_DEV_STATE_CLOSED;

 accel->sensitivity = CMPC_ACCEL_SENSITIVITY_DEFAULT;
 cmpc_accel_set_sensitivity_v4(acpi->handle, accel->sensitivity);

 error = device_create_file(&acpi->dev, &cmpc_accel_sensitivity_attr_v4);
 if (error)
  goto failed_sensitivity;

 accel->g_select = CMPC_ACCEL_G_SELECT_DEFAULT;
 cmpc_accel_set_g_select_v4(acpi->handle, accel->g_select);

 error = device_create_file(&acpi->dev, &cmpc_accel_g_select_attr_v4);
 if (error)
  goto failed_g_select;

 error = cmpc_add_acpi_notify_device(acpi, "cmpc_accel_v4",
         cmpc_accel_idev_init_v4);
 if (error)
  goto failed_input;

 inputdev = dev_get_drvdata(&acpi->dev);
 dev_set_drvdata(&inputdev->dev, accel);

 return 0;

failed_input:
 device_remove_file(&acpi->dev, &cmpc_accel_g_select_attr_v4);
failed_g_select:
 device_remove_file(&acpi->dev, &cmpc_accel_sensitivity_attr_v4);
failed_sensitivity:
 kfree(accel);
 return error;
}
