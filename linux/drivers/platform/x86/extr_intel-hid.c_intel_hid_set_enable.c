
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int acpi_handle ;


 int ACPI_HANDLE (struct device*) ;
 int EIO ;
 int INTEL_HID_DSM_HDSM_FN ;
 int dev_warn (struct device*,char*,char*) ;
 int intel_hid_execute_method (int ,int ,int) ;

__attribute__((used)) static int intel_hid_set_enable(struct device *device, bool enable)
{
 acpi_handle handle = ACPI_HANDLE(device);


 if (!intel_hid_execute_method(handle, INTEL_HID_DSM_HDSM_FN,
          enable)) {
  dev_warn(device, "failed to %sable hotkeys\n",
    enable ? "en" : "dis");
  return -EIO;
 }

 return 0;
}
