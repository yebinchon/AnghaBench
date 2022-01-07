
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __oprofile_hrtimer_start (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;

__attribute__((used)) static int oprofile_timer_online(unsigned int cpu)
{
 local_irq_disable();
 __oprofile_hrtimer_start(((void*)0));
 local_irq_enable();
 return 0;
}
