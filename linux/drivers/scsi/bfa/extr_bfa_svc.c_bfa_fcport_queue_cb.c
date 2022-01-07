
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcport_s {TYPE_1__* bfa; int event_cbarg; int (* event_cbfn ) (int ,int) ;} ;
struct bfa_fcport_ln_s {int ln_event; int ln_qe; struct bfa_fcport_s* fcport; } ;
typedef enum bfa_port_linkstate { ____Placeholder_bfa_port_linkstate } bfa_port_linkstate ;
struct TYPE_2__ {scalar_t__ fcs; } ;


 int BFA_FCPORT_LN_SM_NOTIFICATION ;
 int __bfa_cb_fcport_event ;
 int bfa_cb_queue (TYPE_1__*,int *,int ,struct bfa_fcport_ln_s*) ;
 int bfa_sm_send_event (struct bfa_fcport_ln_s*,int ) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
bfa_fcport_queue_cb(struct bfa_fcport_ln_s *ln, enum bfa_port_linkstate event)
{
 struct bfa_fcport_s *fcport = ln->fcport;

 if (fcport->bfa->fcs) {
  fcport->event_cbfn(fcport->event_cbarg, event);
  bfa_sm_send_event(ln, BFA_FCPORT_LN_SM_NOTIFICATION);
 } else {
  ln->ln_event = event;
  bfa_cb_queue(fcport->bfa, &ln->ln_qe,
   __bfa_cb_fcport_event, ln);
 }
}
