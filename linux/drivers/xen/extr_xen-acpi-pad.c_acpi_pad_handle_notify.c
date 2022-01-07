
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int length; void* pointer; } ;
typedef int acpi_handle ;


 int ACPI_PROCESSOR_AGGREGATOR_NOTIFY ;
 int acpi_evaluate_ost (int ,int ,int ,struct acpi_buffer*) ;
 int acpi_pad_pur (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ xen_acpi_pad_idle_cpus (int) ;
 int xen_acpi_pad_idle_cpus_num () ;
 int xen_cpu_lock ;

__attribute__((used)) static void acpi_pad_handle_notify(acpi_handle handle)
{
 int idle_nums;
 struct acpi_buffer param = {
  .length = 4,
  .pointer = (void *)&idle_nums,
 };


 mutex_lock(&xen_cpu_lock);
 idle_nums = acpi_pad_pur(handle);
 if (idle_nums < 0) {
  mutex_unlock(&xen_cpu_lock);
  return;
 }

 idle_nums = xen_acpi_pad_idle_cpus(idle_nums)
      ?: xen_acpi_pad_idle_cpus_num();
 if (idle_nums >= 0)
  acpi_evaluate_ost(handle, ACPI_PROCESSOR_AGGREGATOR_NOTIFY,
      0, &param);
 mutex_unlock(&xen_cpu_lock);
}
