
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_interdomain {unsigned int remote_dom; unsigned int remote_port; int local_port; } ;


 int EVTCHNOP_bind_interdomain ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_interdomain*) ;
 int bind_evtchn_to_irq (int ) ;

int bind_interdomain_evtchn_to_irq(unsigned int remote_domain,
       unsigned int remote_port)
{
 struct evtchn_bind_interdomain bind_interdomain;
 int err;

 bind_interdomain.remote_dom = remote_domain;
 bind_interdomain.remote_port = remote_port;

 err = HYPERVISOR_event_channel_op(EVTCHNOP_bind_interdomain,
       &bind_interdomain);

 return err ? : bind_evtchn_to_irq(bind_interdomain.local_port);
}
