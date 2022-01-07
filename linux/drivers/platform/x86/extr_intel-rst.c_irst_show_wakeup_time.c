
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
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t irst_show_wakeup_time(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct acpi_device *acpi;
 unsigned long long value;
 acpi_status status;

 acpi = to_acpi_device(dev);

 status = acpi_evaluate_integer(acpi->handle, "GFTV", ((void*)0), &value);
 if (ACPI_FAILURE(status))
  return -EINVAL;

 return sprintf(buf, "%lld\n", value);
}
