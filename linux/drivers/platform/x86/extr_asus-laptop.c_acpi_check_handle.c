
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ AE_OK ;
 int ENODEV ;
 scalar_t__ acpi_get_handle (int ,char*,int *) ;
 int pr_warn (char*,char const*) ;

__attribute__((used)) static int acpi_check_handle(acpi_handle handle, const char *method,
        acpi_handle *ret)
{
 acpi_status status;

 if (method == ((void*)0))
  return -ENODEV;

 if (ret)
  status = acpi_get_handle(handle, (char *)method,
      ret);
 else {
  acpi_handle dummy;

  status = acpi_get_handle(handle, (char *)method,
      &dummy);
 }

 if (status != AE_OK) {
  if (ret)
   pr_warn("Error finding %s\n", method);
  return -ENODEV;
 }
 return 0;
}
