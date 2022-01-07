
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int xen_cpuid; scalar_t__ acpi_id; int max_present; } ;
struct TYPE_3__ {TYPE_2__ pcpu_info; } ;
struct xen_platform_op {TYPE_1__ u; int cmd; } ;


 int ENODEV ;
 scalar_t__ HYPERVISOR_platform_op (struct xen_platform_op*) ;
 int XENPF_get_cpuinfo ;

int xen_pcpu_id(uint32_t acpi_id)
{
 int cpu_id = 0, max_id = 0;
 struct xen_platform_op op;

 op.cmd = XENPF_get_cpuinfo;
 while (cpu_id <= max_id) {
  op.u.pcpu_info.xen_cpuid = cpu_id;
  if (HYPERVISOR_platform_op(&op)) {
   cpu_id++;
   continue;
  }

  if (acpi_id == op.u.pcpu_info.acpi_id)
   return cpu_id;
  if (op.u.pcpu_info.max_present > max_id)
   max_id = op.u.pcpu_info.max_present;
  cpu_id++;
 }

 return -ENODEV;
}
