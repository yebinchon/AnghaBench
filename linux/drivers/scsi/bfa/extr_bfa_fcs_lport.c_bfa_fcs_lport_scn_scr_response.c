
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fchs_s {int dummy; } ;
struct fc_ls_rjt_s {int reason_code_expl; int reason_code; } ;
struct fc_els_cmd_s {int els_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_scn_s {struct bfa_fcs_lport_s* port; } ;
struct TYPE_2__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_1__ port_cfg; } ;
typedef int bfa_status_t ;


 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;
 int BFA_STATUS_OK ;


 int SCNSM_EVENT_RSP_ERROR ;
 int SCNSM_EVENT_RSP_OK ;
 int bfa_sm_send_event (struct bfa_fcs_lport_scn_s*,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_scn_scr_response(void *fcsarg, struct bfa_fcxp_s *fcxp,
   void *cbarg, bfa_status_t req_status, u32 rsp_len,
         u32 resid_len, struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_lport_scn_s *scn = (struct bfa_fcs_lport_scn_s *) cbarg;
 struct bfa_fcs_lport_s *port = scn->port;
 struct fc_els_cmd_s *els_cmd;
 struct fc_ls_rjt_s *ls_rjt;

 bfa_trc(port->fcs, port->port_cfg.pwwn);




 if (req_status != BFA_STATUS_OK) {
  bfa_trc(port->fcs, req_status);
  bfa_sm_send_event(scn, SCNSM_EVENT_RSP_ERROR);
  return;
 }

 els_cmd = (struct fc_els_cmd_s *) BFA_FCXP_RSP_PLD(fcxp);

 switch (els_cmd->els_code) {

 case 129:
  bfa_sm_send_event(scn, SCNSM_EVENT_RSP_OK);
  break;

 case 128:

  ls_rjt = (struct fc_ls_rjt_s *) BFA_FCXP_RSP_PLD(fcxp);

  bfa_trc(port->fcs, ls_rjt->reason_code);
  bfa_trc(port->fcs, ls_rjt->reason_code_expl);

  bfa_sm_send_event(scn, SCNSM_EVENT_RSP_ERROR);
  break;

 default:
  bfa_sm_send_event(scn, SCNSM_EVENT_RSP_ERROR);
 }
}
