
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int fcxp; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
 int bfa_fcs_rport_hal_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_fc4_logorcv ;
 int bfa_fcs_rport_sm_fc4_logosend ;
 int bfa_fcs_rport_sm_fc4_offline ;
 int bfa_fcs_rport_sm_online ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_adisc_online(struct bfa_fcs_rport_s *rport,
    enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 136:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_online);
  break;

 case 129:




  bfa_fcxp_discard(rport->fcxp);


 case 132:
 case 135:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 134:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 133:



  break;

 case 131:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 130:
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logorcv);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
