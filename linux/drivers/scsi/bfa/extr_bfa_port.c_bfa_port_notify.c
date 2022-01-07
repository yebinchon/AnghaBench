
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_port_s {int dport_enabled; void* endis_pending; int (* endis_cbfn ) (int ,int ) ;int endis_cbarg; void* stats_busy; int (* stats_cbfn ) (int ,int ) ;int stats_cbarg; } ;
typedef enum bfa_ioc_event_e { ____Placeholder_bfa_ioc_event_e } bfa_ioc_event_e ;


 void* BFA_FALSE ;


 int BFA_STATUS_FAILED ;
 int bfa_port_set_dportenabled (struct bfa_port_s*,void*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

void
bfa_port_notify(void *arg, enum bfa_ioc_event_e event)
{
 struct bfa_port_s *port = (struct bfa_port_s *) arg;

 switch (event) {
 case 129:
 case 128:

  if (port->stats_busy) {
   if (port->stats_cbfn)
    port->stats_cbfn(port->stats_cbarg,
      BFA_STATUS_FAILED);
   port->stats_cbfn = ((void*)0);
   port->stats_busy = BFA_FALSE;
  }


  if (port->endis_pending) {
   if (port->endis_cbfn)
    port->endis_cbfn(port->endis_cbarg,
      BFA_STATUS_FAILED);
   port->endis_cbfn = ((void*)0);
   port->endis_pending = BFA_FALSE;
  }


  if (port->dport_enabled)
   bfa_port_set_dportenabled(port, BFA_FALSE);
  break;
 default:
  break;
 }
}
