
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_madt_generic_interrupt {int performance_interrupt; int flags; } ;


 int ACPI_ACTIVE_HIGH ;
 int ACPI_EDGE_SENSITIVE ;
 int ACPI_LEVEL_SENSITIVE ;
 int ACPI_MADT_PERFORMANCE_IRQ_MODE ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct acpi_madt_generic_interrupt* acpi_cpu_get_madt_gicc (int) ;
 int acpi_register_gsi (int *,int,int,int ) ;

__attribute__((used)) static int arm_pmu_acpi_register_irq(int cpu)
{
 struct acpi_madt_generic_interrupt *gicc;
 int gsi, trigger;

 gicc = acpi_cpu_get_madt_gicc(cpu);
 if (WARN_ON(!gicc))
  return -EINVAL;

 gsi = gicc->performance_interrupt;
 if (!gsi)
  return 0;

 if (gicc->flags & ACPI_MADT_PERFORMANCE_IRQ_MODE)
  trigger = ACPI_EDGE_SENSITIVE;
 else
  trigger = ACPI_LEVEL_SENSITIVE;
 return acpi_register_gsi(((void*)0), gsi, trigger, ACPI_ACTIVE_HIGH);
}
