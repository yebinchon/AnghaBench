
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vcpu_runstate_info {int state_entry_time; } ;


 int BUG_ON (int ) ;
 struct vcpu_runstate_info READ_ONCE (struct vcpu_runstate_info) ;
 int XEN_RUNSTATE_UPDATE ;
 int get64 (int *) ;
 struct vcpu_runstate_info* per_cpu_ptr (int *,unsigned int) ;
 int preemptible () ;
 int rmb () ;
 int xen_runstate ;

__attribute__((used)) static void xen_get_runstate_snapshot_cpu_delta(
         struct vcpu_runstate_info *res, unsigned int cpu)
{
 u64 state_time;
 struct vcpu_runstate_info *state;

 BUG_ON(preemptible());

 state = per_cpu_ptr(&xen_runstate, cpu);

 do {
  state_time = get64(&state->state_entry_time);
  rmb();
  *res = READ_ONCE(*state);
  rmb();
 } while (get64(&state->state_entry_time) != state_time ||
   (state_time & XEN_RUNSTATE_UPDATE));
}
