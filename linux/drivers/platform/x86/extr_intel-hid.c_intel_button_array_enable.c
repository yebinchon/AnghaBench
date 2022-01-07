
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hid_priv {int array; } ;
struct device {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (struct device*) ;
 int INTEL_HID_DSM_BTNE_FN ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 struct intel_hid_priv* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int intel_hid_execute_method (int ,int ,unsigned long long) ;

__attribute__((used)) static void intel_button_array_enable(struct device *device, bool enable)
{
 struct intel_hid_priv *priv = dev_get_drvdata(device);
 acpi_handle handle = ACPI_HANDLE(device);
 unsigned long long button_cap;
 acpi_status status;

 if (!priv->array)
  return;


 status = acpi_evaluate_integer(handle, "BTNC", ((void*)0), &button_cap);
 if (ACPI_FAILURE(status)) {
  dev_warn(device, "failed to get button capability\n");
  return;
 }


 if (!intel_hid_execute_method(handle, INTEL_HID_DSM_BTNE_FN,
          enable ? button_cap : 1))
  dev_warn(device, "failed to set button capability\n");
}
