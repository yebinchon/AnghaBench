
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_4__* fcs; TYPE_3__* port; } ;
struct bfa_fcs_rpf_s {int rpsc_retries; struct bfa_fcs_rport_s* rport; } ;
struct bfa_fcs_fabric_s {int dummy; } ;
typedef enum rpf_event { ____Placeholder_rpf_event } rpf_event ;
struct TYPE_9__ {struct bfa_fcs_fabric_s fabric; } ;
struct TYPE_8__ {TYPE_2__* fabric; } ;
struct TYPE_7__ {TYPE_1__* lps; } ;
struct TYPE_6__ {int brcd_switch; } ;


 int BFA_FCS_BRCD_SWITCH_OUI ;
 int BFA_FCS_PID_IS_WKA (int) ;


 int bfa_fcs_fabric_get_switch_oui (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_rpf_send_rpsc2 (struct bfa_fcs_rpf_s*,int *) ;
 int bfa_fcs_rpf_sm_rpsc_sending ;
 int bfa_sm_fault (TYPE_4__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rpf_s*,int ) ;
 int bfa_trc (TYPE_4__*,int) ;

__attribute__((used)) static void
bfa_fcs_rpf_sm_uninit(struct bfa_fcs_rpf_s *rpf, enum rpf_event event)
{
 struct bfa_fcs_rport_s *rport = rpf->rport;
 struct bfa_fcs_fabric_s *fabric = &rport->fcs->fabric;

 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 128:

  if ((!BFA_FCS_PID_IS_WKA(rport->pid)) &&
   ((rport->port->fabric->lps->brcd_switch) ||
   (bfa_fcs_fabric_get_switch_oui(fabric) ==
      BFA_FCS_BRCD_SWITCH_OUI))) {
   bfa_sm_set_state(rpf, bfa_fcs_rpf_sm_rpsc_sending);
   rpf->rpsc_retries = 0;
   bfa_fcs_rpf_send_rpsc2(rpf, ((void*)0));
  }
  break;

 case 129:
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
