
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int EIO ;
 int acpi_evaluate_object (int ,char*,int *,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int toshiba_haps_reset_protection(acpi_handle handle)
{
 acpi_status status;

 status = acpi_evaluate_object(handle, "RSSS", ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status)) {
  pr_err("Unable to reset the HDD protection\n");
  return -EIO;
 }

 return 0;
}
