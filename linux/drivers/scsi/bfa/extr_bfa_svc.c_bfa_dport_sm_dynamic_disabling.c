
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ scn; } ;
struct bfa_dport_s {int bfa; TYPE_2__ i2hmsg; int dynamic; } ;
typedef enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;




 int BFA_FALSE ;
 int BFA_STATUS_OK ;

 int bfa_cb_fcdiag_dport (struct bfa_dport_s*,int ) ;
 int bfa_dport_sm_disabled ;
 int bfa_fcport_enable (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_dport_sm_dynamic_disabling(struct bfa_dport_s *dport,
          enum bfa_dport_sm_event event)
{
 bfa_trc(dport->bfa, event);

 switch (event) {
 case 129:
  switch (dport->i2hmsg.scn.state) {
  case 128:
   bfa_sm_set_state(dport, bfa_dport_sm_disabled);
   dport->dynamic = BFA_FALSE;
   bfa_fcport_enable(dport->bfa);
   break;

  default:
   bfa_trc(dport->bfa, dport->i2hmsg.scn.state);
   bfa_sm_fault(dport->bfa, event);

  }
  break;

 case 130:
  bfa_sm_set_state(dport, bfa_dport_sm_disabled);
  bfa_cb_fcdiag_dport(dport, BFA_STATUS_OK);
  break;

 default:
  bfa_sm_fault(dport->bfa, event);
 }
}
