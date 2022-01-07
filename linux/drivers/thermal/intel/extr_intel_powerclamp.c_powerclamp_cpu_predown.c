
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clamping ;
 unsigned int control_cpu ;
 int cpu_online_mask ;
 unsigned int cpumask_first (int ) ;
 unsigned int cpumask_next (unsigned int,int ) ;
 int smp_mb () ;
 int stop_power_clamp_worker (unsigned int) ;

__attribute__((used)) static int powerclamp_cpu_predown(unsigned int cpu)
{
 if (clamping == 0)
  return 0;

 stop_power_clamp_worker(cpu);
 if (cpu != control_cpu)
  return 0;

 control_cpu = cpumask_first(cpu_online_mask);
 if (control_cpu == cpu)
  control_cpu = cpumask_next(cpu, cpu_online_mask);
 smp_mb();
 return 0;
}
