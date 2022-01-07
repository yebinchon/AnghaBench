
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_buffer {int length; int* pointer; } ;
typedef size_t ssize_t ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 size_t EINVAL ;
 size_t ENODEV ;
 int INTEL_WMI_THUNDERBOLT_GUID ;
 int dev_dbg (struct device*,char*,...) ;
 int hex_to_bin (char const) ;
 int wmi_evaluate_method (int ,int ,int,struct acpi_buffer*,int *) ;

__attribute__((used)) static ssize_t force_power_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct acpi_buffer input;
 acpi_status status;
 u8 mode;

 input.length = sizeof(u8);
 input.pointer = &mode;
 mode = hex_to_bin(buf[0]);
 dev_dbg(dev, "force_power: storing %#x\n", mode);
 if (mode == 0 || mode == 1) {
  status = wmi_evaluate_method(INTEL_WMI_THUNDERBOLT_GUID, 0, 1,
          &input, ((void*)0));
  if (ACPI_FAILURE(status)) {
   dev_dbg(dev, "force_power: failed to evaluate ACPI method\n");
   return -ENODEV;
  }
 } else {
  dev_dbg(dev, "force_power: unsupported mode\n");
  return -EINVAL;
 }
 return count;
}
