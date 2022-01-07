
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct asus_wireless_data {int idev; } ;
struct acpi_device {int dev; } ;


 int KEY_RFKILL ;
 struct asus_wireless_data* acpi_driver_data (struct acpi_device*) ;
 int dev_dbg (int *,char*,int) ;
 int dev_notice (int *,char*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void asus_wireless_notify(struct acpi_device *adev, u32 event)
{
 struct asus_wireless_data *data = acpi_driver_data(adev);

 dev_dbg(&adev->dev, "event=%#x\n", event);
 if (event != 0x88) {
  dev_notice(&adev->dev, "Unknown ASHS event: %#x\n", event);
  return;
 }
 input_report_key(data->idev, KEY_RFKILL, 1);
 input_sync(data->idev);
 input_report_key(data->idev, KEY_RFKILL, 0);
 input_sync(data->idev);
}
