
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_device {int dev; int driver_data; } ;


 int acpi_pm_wakeup_event (int *) ;
 int chromeos_tbmc_query_switch (struct acpi_device*,int ) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static void chromeos_tbmc_notify(struct acpi_device *adev, u32 event)
{
 acpi_pm_wakeup_event(&adev->dev);
 switch (event) {
 case 0x80:
  chromeos_tbmc_query_switch(adev, adev->driver_data);
  break;
 default:
  dev_err(&adev->dev, "Unexpected event: 0x%08X\n", event);
 }
}
