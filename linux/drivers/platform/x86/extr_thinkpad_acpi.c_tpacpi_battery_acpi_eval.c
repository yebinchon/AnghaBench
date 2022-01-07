
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 int AE_ERROR ;
 int AE_OK ;
 int METHOD_ERR ;
 int acpi_evalf (int ,int*,char*,char*,int) ;
 int acpi_handle_err (int ,char*,char*) ;
 int hkey_handle ;

__attribute__((used)) static acpi_status tpacpi_battery_acpi_eval(char *method, int *ret, int param)
{
 int response;

 if (!acpi_evalf(hkey_handle, &response, method, "dd", param)) {
  acpi_handle_err(hkey_handle, "%s: evaluate failed", method);
  return AE_ERROR;
 }
 if (response & METHOD_ERR) {
  acpi_handle_err(hkey_handle,
    "%s evaluated but flagged as error", method);
  return AE_ERROR;
 }
 *ret = response;
 return AE_OK;
}
