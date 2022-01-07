
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int function; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int HRTIMER_MODE_REL_PINNED ;
 int TICK_NSEC ;
 int ctr_running ;
 int hrtimer_init (struct hrtimer*,int ,int ) ;
 int hrtimer_start (struct hrtimer*,int ,int ) ;
 int ns_to_ktime (int ) ;
 int oprofile_hrtimer ;
 int oprofile_hrtimer_notify ;
 struct hrtimer* this_cpu_ptr (int *) ;

__attribute__((used)) static void __oprofile_hrtimer_start(void *unused)
{
 struct hrtimer *hrtimer = this_cpu_ptr(&oprofile_hrtimer);

 if (!ctr_running)
  return;

 hrtimer_init(hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 hrtimer->function = oprofile_hrtimer_notify;

 hrtimer_start(hrtimer, ns_to_ktime(TICK_NSEC),
        HRTIMER_MODE_REL_PINNED);
}
