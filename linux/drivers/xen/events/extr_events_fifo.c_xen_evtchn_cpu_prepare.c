
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_control_block ;
 int evtchn_fifo_alloc_control_block (unsigned int) ;
 int per_cpu (int ,unsigned int) ;

__attribute__((used)) static int xen_evtchn_cpu_prepare(unsigned int cpu)
{
 if (!per_cpu(cpu_control_block, cpu))
  return evtchn_fifo_alloc_control_block(cpu);
 return 0;
}
