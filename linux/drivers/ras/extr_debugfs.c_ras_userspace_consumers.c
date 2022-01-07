
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int trace_count ;

int ras_userspace_consumers(void)
{
 return atomic_read(&trace_count);
}
