
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpqhp_event_thread ;
 int kthread_stop (int ) ;

void cpqhp_event_stop_thread(void)
{
 kthread_stop(cpqhp_event_thread);
}
