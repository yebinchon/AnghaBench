
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int id; int handle; } ;
typedef int acpi_status ;


 int AE_ERROR ;
 int AE_OK ;
 scalar_t__ invalid_logical_cpuid (int ) ;
 int is_processor_present (int ) ;
 int xen_hotadd_cpu (struct acpi_processor*) ;
 int xen_pcpu_hotplug_sync () ;

__attribute__((used)) static acpi_status xen_acpi_cpu_hotadd(struct acpi_processor *pr)
{
 if (!is_processor_present(pr->handle))
  return AE_ERROR;

 pr->id = xen_hotadd_cpu(pr);
 if (invalid_logical_cpuid(pr->id))
  return AE_ERROR;





 xen_pcpu_hotplug_sync();

 return AE_OK;
}
