
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int plogi_pending; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;


 int BFA_TRUE ;
 int bfa_fcs_rport_fcs_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_hal_online_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_fc4_logorcv ;
 int bfa_fcs_rport_sm_fc4_logosend ;
 int bfa_fcs_rport_sm_fc4_offline ;
 int bfa_fcs_rport_sm_online ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_hal_online(struct bfa_fcs_rport_s *rport,
   enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 134:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_online);
  bfa_fcs_rport_hal_online_action(rport);
  break;

 case 131:
  break;

 case 129:
 case 132:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logorcv);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 case 135:
 case 133:
 case 137:
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 case 130:
  rport->plogi_pending = BFA_TRUE;
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 case 136:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
