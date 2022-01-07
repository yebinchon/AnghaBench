
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 int _cond_resched () ;
 scalar_t__ need_resched () ;
 scalar_t__ unlikely (int) ;
 int xen_in_preemptible_hcall ;

void xen_maybe_preempt_hcall(void)
{
 if (unlikely(__this_cpu_read(xen_in_preemptible_hcall)
       && need_resched())) {




  __this_cpu_write(xen_in_preemptible_hcall, 0);
  _cond_resched();
  __this_cpu_write(xen_in_preemptible_hcall, 1);
 }
}
