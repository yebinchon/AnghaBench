
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EINVAL ;
 int acpi_execute_simple_method (int ,char*,unsigned long) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t irst_store_wakeup_events(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct acpi_device *acpi;
 acpi_status status;
 unsigned long value;
 int error;

 acpi = to_acpi_device(dev);

 error = kstrtoul(buf, 0, &value);
 if (error)
  return error;

 status = acpi_execute_simple_method(acpi->handle, "SFFS", value);
 if (ACPI_FAILURE(status))
  return -EINVAL;

 return count;
}
