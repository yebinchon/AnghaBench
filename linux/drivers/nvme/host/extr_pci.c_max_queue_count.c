
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int max_io_queues () ;

__attribute__((used)) static unsigned int max_queue_count(void)
{

 return 1 + max_io_queues();
}
