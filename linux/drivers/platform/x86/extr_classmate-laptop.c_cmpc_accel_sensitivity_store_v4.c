
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmpc_accel {unsigned long sensitivity; } ;
struct acpi_device {int handle; int dev; } ;
typedef int ssize_t ;


 int EINVAL ;
 int cmpc_accel_set_sensitivity_v4 (int ,unsigned long) ;
 void* dev_get_drvdata (int *) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int strnlen (char const*,size_t) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t cmpc_accel_sensitivity_store_v4(struct device *dev,
            struct device_attribute *attr,
            const char *buf, size_t count)
{
 struct acpi_device *acpi;
 struct input_dev *inputdev;
 struct cmpc_accel *accel;
 unsigned long sensitivity;
 int r;

 acpi = to_acpi_device(dev);
 inputdev = dev_get_drvdata(&acpi->dev);
 accel = dev_get_drvdata(&inputdev->dev);

 r = kstrtoul(buf, 0, &sensitivity);
 if (r)
  return r;


 if (sensitivity < 1 || sensitivity > 127)
  return -EINVAL;

 accel->sensitivity = sensitivity;
 cmpc_accel_set_sensitivity_v4(acpi->handle, sensitivity);

 return strnlen(buf, count);
}
