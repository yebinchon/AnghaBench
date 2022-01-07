
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_present (int) ;
 int set_cpu_present (int,int) ;
 int xen_arch_register_cpu (int) ;

__attribute__((used)) static void enable_hotplug_cpu(int cpu)
{
 if (!cpu_present(cpu))
  xen_arch_register_cpu(cpu);

 set_cpu_present(cpu, 1);
}
