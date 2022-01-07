
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int cpuid; } ;
struct TYPE_4__ {TYPE_1__ cpu_ol; } ;
struct xen_platform_op {TYPE_2__ u; int interface_version; int cmd; } ;


 int HYPERVISOR_platform_op (struct xen_platform_op*) ;
 int XENPF_INTERFACE_VERSION ;
 int XENPF_cpu_offline ;

__attribute__((used)) static int xen_pcpu_down(uint32_t cpu_id)
{
 struct xen_platform_op op = {
  .cmd = XENPF_cpu_offline,
  .interface_version = XENPF_INTERFACE_VERSION,
  .u.cpu_ol.cpuid = cpu_id,
 };

 return HYPERVISOR_platform_op(&op);
}
