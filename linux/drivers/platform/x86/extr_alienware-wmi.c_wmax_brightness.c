
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmax_brightness_args {int led_mask; int percentage; } ;
struct acpi_buffer {struct wmax_brightness_args* pointer; scalar_t__ length; } ;
typedef int args ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_FAILURE (int ) ;
 int WMAX_CONTROL_GUID ;
 int WMAX_METHOD_BRIGHTNESS ;
 int pr_err (char*,int ) ;
 int wmi_evaluate_method (int ,int ,int ,struct acpi_buffer*,int *) ;

__attribute__((used)) static int wmax_brightness(int brightness)
{
 acpi_status status;
 struct acpi_buffer input;
 struct wmax_brightness_args args = {
  .led_mask = 0xFF,
  .percentage = brightness,
 };
 input.length = (acpi_size) sizeof(args);
 input.pointer = &args;
 status = wmi_evaluate_method(WMAX_CONTROL_GUID, 0,
         WMAX_METHOD_BRIGHTNESS, &input, ((void*)0));
 if (ACPI_FAILURE(status))
  pr_err("alienware-wmi: brightness set failure: %u\n", status);
 return ACPI_FAILURE(status);
}
