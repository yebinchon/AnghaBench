
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int fcxp_wqe; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int bfa; } ;
 int bfa_fcs_rport_hal_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_adisc_online ;
 int bfa_fcs_rport_sm_fc4_logorcv ;
 int bfa_fcs_rport_sm_fc4_logosend ;
 int bfa_fcs_rport_sm_fc4_offline ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_adisc_online_sending(struct bfa_fcs_rport_s *rport,
  enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 132:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_adisc_online);
  break;

 case 134:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 131:
 case 135:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 130:
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logorcv);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 133:
  break;

 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
