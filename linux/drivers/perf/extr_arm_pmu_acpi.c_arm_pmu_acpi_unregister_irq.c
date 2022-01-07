
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_madt_generic_interrupt {int performance_interrupt; } ;


 struct acpi_madt_generic_interrupt* acpi_cpu_get_madt_gicc (int) ;
 int acpi_unregister_gsi (int) ;

__attribute__((used)) static void arm_pmu_acpi_unregister_irq(int cpu)
{
 struct acpi_madt_generic_interrupt *gicc;
 int gsi;

 gicc = acpi_cpu_get_madt_gicc(cpu);
 if (!gicc)
  return;

 gsi = gicc->performance_interrupt;
 acpi_unregister_gsi(gsi);
}
