
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int acpi_evaluate_integer (int ,char*,int *,int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;

__attribute__((used)) static int toshiba_haps_available(acpi_handle handle)
{
 acpi_status status;
 u64 hdd_present;





 status = acpi_evaluate_integer(handle, "_STA", ((void*)0), &hdd_present);
 if (ACPI_FAILURE(status)) {
  pr_err("ACPI call to query HDD protection failed\n");
  return 0;
 }

 if (!hdd_present) {
  pr_info("HDD protection not available or using SSD\n");
  return 0;
 }

 return 1;
}
