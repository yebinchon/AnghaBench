
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_set_priority {unsigned int priority; int port; } ;


 int EVTCHNOP_set_priority ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_set_priority*) ;
 int evtchn_from_irq (unsigned int) ;

int xen_set_irq_priority(unsigned irq, unsigned priority)
{
 struct evtchn_set_priority set_priority;

 set_priority.port = evtchn_from_irq(irq);
 set_priority.priority = priority;

 return HYPERVISOR_event_channel_op(EVTCHNOP_set_priority,
        &set_priority);
}
