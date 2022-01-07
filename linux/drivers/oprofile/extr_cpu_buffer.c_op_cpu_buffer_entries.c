
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int op_ring_buffer ;
 unsigned long ring_buffer_entries_cpu (int ,int) ;

unsigned long op_cpu_buffer_entries(int cpu)
{
 return ring_buffer_entries_cpu(op_ring_buffer, cpu);
}
