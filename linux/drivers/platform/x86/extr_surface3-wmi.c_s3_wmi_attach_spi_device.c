
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_OK ;
 int SPI_TS_OBJ_NAME ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_device_bid (struct acpi_device*) ;
 int pr_err (char*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static acpi_status s3_wmi_attach_spi_device(acpi_handle handle,
         u32 level,
         void *data,
         void **return_value)
{
 struct acpi_device *adev, **ts_adev;

 if (acpi_bus_get_device(handle, &adev))
  return AE_OK;

 ts_adev = data;

 if (strncmp(acpi_device_bid(adev), SPI_TS_OBJ_NAME,
     strlen(SPI_TS_OBJ_NAME)))
  return AE_OK;

 if (*ts_adev) {
  pr_err("duplicate entry %s\n", SPI_TS_OBJ_NAME);
  return AE_OK;
 }

 *ts_adev = adev;

 return AE_OK;
}
