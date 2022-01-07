
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tco_dev; int punit_dev; int dev; int telem_res_inval; } ;


 int acpi_has_watchdog () ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int ipc_create_punit_device () ;
 int ipc_create_tco_device () ;
 int ipc_create_telemetry_device () ;
 TYPE_1__ ipcdev ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int ipc_create_pmc_devices(void)
{
 int ret;


 if (!acpi_has_watchdog()) {
  ret = ipc_create_tco_device();
  if (ret) {
   dev_err(ipcdev.dev, "Failed to add tco platform device\n");
   return ret;
  }
 }

 ret = ipc_create_punit_device();
 if (ret) {
  dev_err(ipcdev.dev, "Failed to add punit platform device\n");
  platform_device_unregister(ipcdev.tco_dev);
  return ret;
 }

 if (!ipcdev.telem_res_inval) {
  ret = ipc_create_telemetry_device();
  if (ret) {
   dev_warn(ipcdev.dev,
    "Failed to add telemetry platform device\n");
   platform_device_unregister(ipcdev.punit_dev);
   platform_device_unregister(ipcdev.tco_dev);
  }
 }

 return ret;
}
