
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idle_inject_device {int timer; int cpumask; int run_duration_us; int idle_duration_us; } ;


 int EINVAL ;
 int HRTIMER_MODE_REL ;
 unsigned int NSEC_PER_USEC ;
 unsigned int READ_ONCE (int ) ;
 int cpumask_pr_args (int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int idle_inject_wakeup (struct idle_inject_device*) ;
 int ns_to_ktime (unsigned int) ;
 int pr_debug (char*,int ) ;
 int to_cpumask (int ) ;

int idle_inject_start(struct idle_inject_device *ii_dev)
{
 unsigned int idle_duration_us = READ_ONCE(ii_dev->idle_duration_us);
 unsigned int run_duration_us = READ_ONCE(ii_dev->run_duration_us);

 if (!idle_duration_us || !run_duration_us)
  return -EINVAL;

 pr_debug("Starting injecting idle cycles on CPUs '%*pbl'\n",
   cpumask_pr_args(to_cpumask(ii_dev->cpumask)));

 idle_inject_wakeup(ii_dev);

 hrtimer_start(&ii_dev->timer,
        ns_to_ktime((idle_duration_us + run_duration_us) *
      NSEC_PER_USEC),
        HRTIMER_MODE_REL);

 return 0;
}
