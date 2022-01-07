
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int acpi_handle ;


 int ACPI_HANDLE (int *) ;
 int INTEL_HID_DSM_HEBC_V1_FN ;
 int INTEL_HID_DSM_HEBC_V2_FN ;
 int button_array_table ;
 scalar_t__ dmi_check_system (int ) ;
 scalar_t__ intel_hid_evaluate_method (int ,int ,unsigned long long*) ;

__attribute__((used)) static bool button_array_present(struct platform_device *device)
{
 acpi_handle handle = ACPI_HANDLE(&device->dev);
 unsigned long long event_cap;

 if (intel_hid_evaluate_method(handle, INTEL_HID_DSM_HEBC_V2_FN,
          &event_cap)) {

  if (event_cap & 0x60000)
   return 1;
 }

 if (intel_hid_evaluate_method(handle, INTEL_HID_DSM_HEBC_V1_FN,
          &event_cap)) {
  if (event_cap & 0x20000)
   return 1;
 }

 if (dmi_check_system(button_array_table))
  return 1;

 return 0;
}
