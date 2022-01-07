
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct xenpf_pcpuinfo {int flags; int max_present; int xen_cpuid; } ;
struct TYPE_2__ {struct xenpf_pcpuinfo pcpu_info; } ;
struct xen_platform_op {TYPE_1__ u; int interface_version; int cmd; } ;
struct pcpu {int dummy; } ;


 int ENODEV ;
 int HYPERVISOR_platform_op (struct xen_platform_op*) ;
 scalar_t__ IS_ERR_OR_NULL (struct pcpu*) ;
 int XENPF_INTERFACE_VERSION ;
 int XENPF_get_cpuinfo ;
 int XEN_PCPU_FLAGS_INVALID ;
 struct pcpu* create_and_register_pcpu (struct xenpf_pcpuinfo*) ;
 struct pcpu* get_pcpu (int ) ;
 int pcpu_online_status (struct xenpf_pcpuinfo*,struct pcpu*) ;
 int unregister_and_remove_pcpu (struct pcpu*) ;

__attribute__((used)) static int sync_pcpu(uint32_t cpu, uint32_t *max_cpu)
{
 int ret;
 struct pcpu *pcpu = ((void*)0);
 struct xenpf_pcpuinfo *info;
 struct xen_platform_op op = {
  .cmd = XENPF_get_cpuinfo,
  .interface_version = XENPF_INTERFACE_VERSION,
  .u.pcpu_info.xen_cpuid = cpu,
 };

 ret = HYPERVISOR_platform_op(&op);
 if (ret)
  return ret;

 info = &op.u.pcpu_info;
 if (max_cpu)
  *max_cpu = info->max_present;

 pcpu = get_pcpu(cpu);




 if (info->flags & XEN_PCPU_FLAGS_INVALID) {
  unregister_and_remove_pcpu(pcpu);
  return 0;
 }

 if (!pcpu) {
  pcpu = create_and_register_pcpu(info);
  if (IS_ERR_OR_NULL(pcpu))
   return -ENODEV;
 } else
  pcpu_online_status(info, pcpu);

 return 0;
}
