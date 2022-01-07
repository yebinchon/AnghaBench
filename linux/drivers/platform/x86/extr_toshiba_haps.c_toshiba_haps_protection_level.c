
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int acpi_execute_simple_method (int ,char*,int) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int toshiba_haps_protection_level(acpi_handle handle, int level)
{
 acpi_status status;

 status = acpi_execute_simple_method(handle, "PTLV", level);
 if (ACPI_FAILURE(status)) {
  pr_err("Error while setting the protection level\n");
  return -EIO;
 }

 pr_debug("HDD protection level set to: %d\n", level);

 return 0;
}
