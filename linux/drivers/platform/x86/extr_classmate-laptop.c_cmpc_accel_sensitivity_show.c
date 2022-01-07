
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmpc_accel {int sensitivity; } ;
struct acpi_device {int dev; } ;
typedef int ssize_t ;


 void* dev_get_drvdata (int *) ;
 int sprintf (char*,char*,int) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t cmpc_accel_sensitivity_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct acpi_device *acpi;
 struct input_dev *inputdev;
 struct cmpc_accel *accel;

 acpi = to_acpi_device(dev);
 inputdev = dev_get_drvdata(&acpi->dev);
 accel = dev_get_drvdata(&inputdev->dev);

 return sprintf(buf, "%d\n", accel->sensitivity);
}
