
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_NOT_EXIST ;
 int METHOD_NAME__CBA ;
 int acpi_evaluate_integer (scalar_t__,int ,int *,unsigned long long*) ;

phys_addr_t acpi_pci_root_get_mcfg_addr(acpi_handle handle)
{
 acpi_status status = AE_NOT_EXIST;
 unsigned long long mcfg_addr;

 if (handle)
  status = acpi_evaluate_integer(handle, METHOD_NAME__CBA,
            ((void*)0), &mcfg_addr);
 if (ACPI_FAILURE(status))
  return 0;

 return (phys_addr_t)mcfg_addr;
}
