
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_hard_smp_processor_id (int) ;

u32 ps3_get_hw_thread_id(int cpu)
{
 return get_hard_smp_processor_id(cpu);
}
