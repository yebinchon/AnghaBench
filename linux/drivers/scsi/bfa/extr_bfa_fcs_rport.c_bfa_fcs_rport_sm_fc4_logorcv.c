
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int prlo; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int bfa_fcs_rport_hal_offline (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_logo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_prlo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_fc4_off_delete ;
 int bfa_fcs_rport_sm_hcb_logorcv ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_fc4_logorcv(struct bfa_fcs_rport_s *rport,
   enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 133:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_hcb_logorcv);
  bfa_fcs_rport_hal_offline(rport);
  break;

 case 134:
  if (rport->pid && (rport->prlo == BFA_TRUE))
   bfa_fcs_rport_send_prlo_acc(rport);
  if (rport->pid && (rport->prlo == BFA_FALSE))
   bfa_fcs_rport_send_logo_acc(rport);

  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_off_delete);
  break;

 case 128:
 case 129:
 case 132:
 case 131:
 case 130:
 case 135:
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
