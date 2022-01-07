
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int xen_acpi_notify_hypervisor_state (int ,int ,int ,int) ;

int xen_acpi_notify_hypervisor_extended_sleep(u8 sleep_state,
         u32 val_a, u32 val_b)
{
 return xen_acpi_notify_hypervisor_state(sleep_state, val_a,
      val_b, 1);
}
