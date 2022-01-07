
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct acpi_device* ACPI_COMPANION (struct device*) ;
 char* acpi_device_hid (struct acpi_device*) ;
 scalar_t__ strcmp (char const*,char*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int cht_int33fe_check_for_max17047(struct device *dev, void *data)
{
 struct i2c_client **max17047 = data;
 struct acpi_device *adev;
 const char *hid;

 adev = ACPI_COMPANION(dev);
 if (!adev)
  return 0;

 hid = acpi_device_hid(adev);


 if (strcmp(hid, "MAX17047"))
  return 0;

 *max17047 = to_i2c_client(dev);
 return 1;
}
