
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_runstate_info {int * time; } ;


 int old_runstate_time ;
 scalar_t__* per_cpu (int ,unsigned int) ;
 int xen_get_runstate_snapshot_cpu_delta (struct vcpu_runstate_info*,unsigned int) ;

__attribute__((used)) static void xen_get_runstate_snapshot_cpu(struct vcpu_runstate_info *res,
       unsigned int cpu)
{
 int i;

 xen_get_runstate_snapshot_cpu_delta(res, cpu);

 for (i = 0; i < 4; i++)
  res->time[i] += per_cpu(old_runstate_time, cpu)[i];
}
