
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __evtchn_fifo_handle_events (unsigned int,int) ;

__attribute__((used)) static int xen_evtchn_cpu_dead(unsigned int cpu)
{
 __evtchn_fifo_handle_events(cpu, 1);
 return 0;
}
