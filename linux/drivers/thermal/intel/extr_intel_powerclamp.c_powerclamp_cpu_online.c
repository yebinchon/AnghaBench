
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clamping ;
 scalar_t__ control_cpu ;
 int smp_mb () ;
 int start_power_clamp_worker (unsigned int) ;

__attribute__((used)) static int powerclamp_cpu_online(unsigned int cpu)
{
 if (clamping == 0)
  return 0;
 start_power_clamp_worker(cpu);

 if (cpu == 0) {
  control_cpu = 0;
  smp_mb();
 }
 return 0;
}
