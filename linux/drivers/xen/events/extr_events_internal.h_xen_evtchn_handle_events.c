
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* handle_events ) (unsigned int) ;} ;


 TYPE_1__* evtchn_ops ;
 void stub1 (unsigned int) ;

__attribute__((used)) static inline void xen_evtchn_handle_events(unsigned cpu)
{
 return evtchn_ops->handle_events(cpu);
}
