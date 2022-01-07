
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __oprofile_hrtimer_stop (unsigned int) ;

__attribute__((used)) static int oprofile_timer_prep_down(unsigned int cpu)
{
 __oprofile_hrtimer_stop(cpu);
 return 0;
}
