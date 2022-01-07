
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ scn; } ;
struct bfa_dport_s {int bfa; TYPE_2__ i2hmsg; int test_state; int dynamic; } ;
typedef enum bfa_dport_sm_event { ____Placeholder_bfa_dport_sm_event } bfa_dport_sm_event ;






 int BFA_DPORT_ST_NOTSTART ;
 int BFA_TRUE ;
 int BFI_DPORT_ENABLE ;
 int BFI_DPORT_SCN_DDPORT_ENABLE ;
 int WARN_ON (int) ;
 int bfa_dport_send_req (struct bfa_dport_s*,int ) ;
 int bfa_dport_sm_enabled ;
 int bfa_dport_sm_enabling ;
 int bfa_dport_sm_enabling_qwait ;
 int bfa_fcport_ddportenable (int ) ;
 int bfa_fcport_dportenable (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_dport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_dport_sm_disabled(struct bfa_dport_s *dport, enum bfa_dport_sm_event event)
{
 bfa_trc(dport->bfa, event);

 switch (event) {
 case 130:
  bfa_fcport_dportenable(dport->bfa);
  if (bfa_dport_send_req(dport, BFI_DPORT_ENABLE))
   bfa_sm_set_state(dport, bfa_dport_sm_enabling);
  else
   bfa_sm_set_state(dport, bfa_dport_sm_enabling_qwait);
  break;

 case 131:

  break;

 case 129:

  break;

 case 128:
  if (dport->i2hmsg.scn.state == BFI_DPORT_SCN_DDPORT_ENABLE) {
   bfa_fcport_ddportenable(dport->bfa);
   dport->dynamic = BFA_TRUE;
   dport->test_state = BFA_DPORT_ST_NOTSTART;
   bfa_sm_set_state(dport, bfa_dport_sm_enabled);
  } else {
   bfa_trc(dport->bfa, dport->i2hmsg.scn.state);
   WARN_ON(1);
  }
  break;

 default:
  bfa_sm_fault(dport->bfa, event);
 }
}
