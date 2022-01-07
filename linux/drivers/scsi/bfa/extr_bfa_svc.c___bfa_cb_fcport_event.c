
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcport_ln_s {int ln_event; TYPE_1__* fcport; } ;
typedef scalar_t__ bfa_boolean_t ;
struct TYPE_2__ {int event_cbarg; int (* event_cbfn ) (int ,int ) ;} ;


 int BFA_FCPORT_LN_SM_NOTIFICATION ;
 int bfa_sm_send_event (struct bfa_fcport_ln_s*,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
__bfa_cb_fcport_event(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_fcport_ln_s *ln = cbarg;

 if (complete)
  ln->fcport->event_cbfn(ln->fcport->event_cbarg, ln->ln_event);
 else
  bfa_sm_send_event(ln, BFA_FCPORT_LN_SM_NOTIFICATION);
}
