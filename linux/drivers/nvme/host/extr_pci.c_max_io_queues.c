
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int num_possible_cpus () ;
 unsigned int poll_queues ;
 unsigned int write_queues ;

__attribute__((used)) static unsigned int max_io_queues(void)
{
 return num_possible_cpus() + write_queues + poll_queues;
}
