
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 scalar_t__ rfkill_inited ;
 int set_u32 (int,unsigned long) ;

__attribute__((used)) static int acer_rfkill_set(void *data, bool blocked)
{
 acpi_status status;
 u32 cap = (unsigned long)data;

 if (rfkill_inited) {
  status = set_u32(!blocked, cap);
  if (ACPI_FAILURE(status))
   return -ENODEV;
 }

 return 0;
}
