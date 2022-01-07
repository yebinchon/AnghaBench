
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vcpu_runstate_info {scalar_t__* time; } ;


 size_t RUNSTATE_offline ;
 size_t RUNSTATE_runnable ;
 int xen_get_runstate_snapshot_cpu (struct vcpu_runstate_info*,int) ;

u64 xen_steal_clock(int cpu)
{
 struct vcpu_runstate_info state;

 xen_get_runstate_snapshot_cpu(&state, cpu);
 return state.time[RUNSTATE_runnable] + state.time[RUNSTATE_offline];
}
