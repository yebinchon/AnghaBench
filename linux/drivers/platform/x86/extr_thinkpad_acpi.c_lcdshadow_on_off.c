
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int acpi_evalf (int ,int*,int *,char*,int) ;
 int acpi_get_handle (int ,char*,int *) ;
 int hkey_handle ;
 int lcdshadow_state ;
 int pr_warn (char*,char*) ;

__attribute__((used)) static int lcdshadow_on_off(bool state)
{
 acpi_handle set_shadow_handle;
 int output;

 if (ACPI_FAILURE(acpi_get_handle(hkey_handle, "SSSS", &set_shadow_handle))) {
  pr_warn("Thinkpad ACPI has no %s interface.\n", "SSSS");
  return -EIO;
 }

 if (!acpi_evalf(set_shadow_handle, &output, ((void*)0), "dd", (int)state))
  return -EIO;

 lcdshadow_state = state;
 return 0;
}
