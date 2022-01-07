
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long oprofile_cpu_buffer_size ;

unsigned long oprofile_get_cpu_buffer_size(void)
{
 return oprofile_cpu_buffer_size;
}
