
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_PERF_ARM_ACPI_STARTING ;
 scalar_t__ acpi_disabled ;
 int arm_pmu_acpi_cpu_starting ;
 int arm_pmu_acpi_parse_irqs () ;
 int arm_spe_acpi_register_device () ;
 int cpuhp_setup_state (int ,char*,int ,int *) ;

__attribute__((used)) static int arm_pmu_acpi_init(void)
{
 int ret;

 if (acpi_disabled)
  return 0;

 arm_spe_acpi_register_device();

 ret = arm_pmu_acpi_parse_irqs();
 if (ret)
  return ret;

 ret = cpuhp_setup_state(CPUHP_AP_PERF_ARM_ACPI_STARTING,
    "perf/arm/pmu_acpi:starting",
    arm_pmu_acpi_cpu_starting, ((void*)0));

 return ret;
}
