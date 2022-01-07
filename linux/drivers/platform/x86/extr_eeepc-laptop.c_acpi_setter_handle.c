
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int cm_supported; int handle; } ;
typedef scalar_t__ acpi_status ;
typedef int acpi_handle ;


 scalar_t__ AE_OK ;
 int ENODEV ;
 scalar_t__ acpi_get_handle (int ,char*,int *) ;
 char** cm_setv ;
 int pr_warn (char*,char const*) ;

__attribute__((used)) static int acpi_setter_handle(struct eeepc_laptop *eeepc, int cm,
         acpi_handle *handle)
{
 const char *method = cm_setv[cm];
 acpi_status status;

 if (method == ((void*)0))
  return -ENODEV;
 if ((eeepc->cm_supported & (0x1 << cm)) == 0)
  return -ENODEV;

 status = acpi_get_handle(eeepc->handle, (char *)method,
     handle);
 if (status != AE_OK) {
  pr_warn("Error finding %s\n", method);
  return -ENODEV;
 }
 return 0;
}
