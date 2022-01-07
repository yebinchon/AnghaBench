
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 scalar_t__ acpi_has_method (int ,char*) ;

__attribute__((used)) static const char *find_hci_method(acpi_handle handle)
{
 if (acpi_has_method(handle, "GHCI"))
  return "GHCI";

 if (acpi_has_method(handle, "SPFC"))
  return "SPFC";

 return ((void*)0);
}
