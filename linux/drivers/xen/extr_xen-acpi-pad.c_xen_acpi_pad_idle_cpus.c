
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int idle_nums; int type; } ;
struct TYPE_4__ {TYPE_1__ core_parking; } ;
struct xen_platform_op {TYPE_2__ u; int cmd; } ;


 int HYPERVISOR_platform_op (struct xen_platform_op*) ;
 int XENPF_core_parking ;
 int XEN_CORE_PARKING_SET ;

__attribute__((used)) static int xen_acpi_pad_idle_cpus(unsigned int idle_nums)
{
 struct xen_platform_op op;

 op.cmd = XENPF_core_parking;
 op.u.core_parking.type = XEN_CORE_PARKING_SET;
 op.u.core_parking.idle_nums = idle_nums;

 return HYPERVISOR_platform_op(&op);
}
