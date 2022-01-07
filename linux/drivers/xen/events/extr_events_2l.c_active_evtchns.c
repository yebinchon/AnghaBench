
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_ulong_t ;
struct shared_info {int* evtchn_pending; int* evtchn_mask; } ;


 int cpu_evtchn_mask ;
 int* per_cpu (int ,unsigned int) ;

__attribute__((used)) static inline xen_ulong_t active_evtchns(unsigned int cpu,
      struct shared_info *sh,
      unsigned int idx)
{
 return sh->evtchn_pending[idx] &
  per_cpu(cpu_evtchn_mask, cpu)[idx] &
  ~sh->evtchn_mask[idx];
}
