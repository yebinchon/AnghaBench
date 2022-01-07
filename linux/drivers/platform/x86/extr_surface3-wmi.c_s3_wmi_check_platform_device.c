
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;
struct TYPE_2__ {struct acpi_device* touchscreen_adev; struct acpi_device* pnp0c0d_adev; } ;


 int ACPI_BUTTON_HID_LID ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int ACPI_TYPE_DEVICE ;
 int SPI_CTL_OBJ_NAME ;
 scalar_t__ acpi_bus_get_device (int ,struct acpi_device**) ;
 int acpi_device_bid (struct acpi_device*) ;
 int acpi_device_hid (struct acpi_device*) ;
 int acpi_walk_namespace (int ,int ,int,int ,int *,struct acpi_device**,int *) ;
 int dev_warn (struct device*,char*) ;
 TYPE_1__ s3_wmi ;
 int s3_wmi_attach_spi_device ;
 int strcmp (int ,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int s3_wmi_check_platform_device(struct device *dev, void *data)
{
 struct acpi_device *adev, *ts_adev = ((void*)0);
 acpi_handle handle;
 acpi_status status;


 handle = ACPI_HANDLE(dev);
 if (!handle || acpi_bus_get_device(handle, &adev))
  return 0;


 if (!strcmp(ACPI_BUTTON_HID_LID, acpi_device_hid(adev))) {
  s3_wmi.pnp0c0d_adev = adev;
  return 0;
 }


 if (strncmp(acpi_device_bid(adev), SPI_CTL_OBJ_NAME,
     strlen(SPI_CTL_OBJ_NAME)))
  return 0;

 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
         s3_wmi_attach_spi_device, ((void*)0),
         &ts_adev, ((void*)0));
 if (ACPI_FAILURE(status))
  dev_warn(dev, "failed to enumerate SPI slaves\n");

 if (!ts_adev)
  return 0;

 s3_wmi.touchscreen_adev = ts_adev;

 return 0;
}
