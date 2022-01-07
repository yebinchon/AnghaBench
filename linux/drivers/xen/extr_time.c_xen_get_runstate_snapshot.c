
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_runstate_info {int dummy; } ;


 int smp_processor_id () ;
 int xen_get_runstate_snapshot_cpu (struct vcpu_runstate_info*,int ) ;

void xen_get_runstate_snapshot(struct vcpu_runstate_info *res)
{
 xen_get_runstate_snapshot_cpu(res, smp_processor_id());
}
