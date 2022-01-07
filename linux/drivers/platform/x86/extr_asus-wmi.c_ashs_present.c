
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ acpi_dev_found (scalar_t__) ;
 scalar_t__* ashs_ids ;

__attribute__((used)) static bool ashs_present(void)
{
 int i = 0;
 while (ashs_ids[i]) {
  if (acpi_dev_found(ashs_ids[i++]))
   return 1;
 }
 return 0;
}
