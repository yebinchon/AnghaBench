
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int BIOS_ENABLED ;
 int ENODEV ;
 int acpi_evaluate_integer (int *,int ,int *,unsigned long long*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t bios_enabled_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 acpi_status status;
 unsigned long long bios_enabled;

 status = acpi_evaluate_integer(((void*)0), BIOS_ENABLED, ((void*)0), &bios_enabled);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return sprintf(buf, "%s\n", bios_enabled ? "enabled" : "disabled");
}
