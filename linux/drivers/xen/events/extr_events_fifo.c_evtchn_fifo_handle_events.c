
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __evtchn_fifo_handle_events (unsigned int,int) ;

__attribute__((used)) static void evtchn_fifo_handle_events(unsigned cpu)
{
 __evtchn_fifo_handle_events(cpu, 0);
}
