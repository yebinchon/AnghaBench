
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fchs_s {int dummy; } ;
struct fc_ls_rjt_s {int reason_code; int reason_code_expl; } ;
struct fc_logi_s {int dummy; } ;
struct fc_els_cmd_s {int els_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_4__ {int ns_plogi_unknown_rsp; int ns_rejects; int ns_plogi_accepts; int ns_plogi_acc_err; int ns_plogi_rsp_err; } ;
struct TYPE_3__ {int pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcs_lport_s* port; } ;
typedef int bfa_status_t ;


 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;
 int BFA_STATUS_OK ;


 int NSSM_EVENT_RSP_ERROR ;
 int NSSM_EVENT_RSP_OK ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_plogi_response(void *fcsarg, struct bfa_fcxp_s *fcxp,
   void *cbarg, bfa_status_t req_status, u32 rsp_len,
         u32 resid_len, struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_lport_ns_s *ns = (struct bfa_fcs_lport_ns_s *) cbarg;
 struct bfa_fcs_lport_s *port = ns->port;

 struct fc_els_cmd_s *els_cmd;
 struct fc_ls_rjt_s *ls_rjt;

 bfa_trc(port->fcs, req_status);
 bfa_trc(port->fcs, port->port_cfg.pwwn);




 if (req_status != BFA_STATUS_OK) {
  bfa_trc(port->fcs, req_status);
  port->stats.ns_plogi_rsp_err++;
  bfa_sm_send_event(ns, NSSM_EVENT_RSP_ERROR);
  return;
 }

 els_cmd = (struct fc_els_cmd_s *) BFA_FCXP_RSP_PLD(fcxp);

 switch (els_cmd->els_code) {

 case 129:
  if (rsp_len < sizeof(struct fc_logi_s)) {
   bfa_trc(port->fcs, rsp_len);
   port->stats.ns_plogi_acc_err++;
   bfa_sm_send_event(ns, NSSM_EVENT_RSP_ERROR);
   break;
  }
  port->stats.ns_plogi_accepts++;
  bfa_sm_send_event(ns, NSSM_EVENT_RSP_OK);
  break;

 case 128:
  ls_rjt = (struct fc_ls_rjt_s *) BFA_FCXP_RSP_PLD(fcxp);

  bfa_trc(port->fcs, ls_rjt->reason_code);
  bfa_trc(port->fcs, ls_rjt->reason_code_expl);

  port->stats.ns_rejects++;

  bfa_sm_send_event(ns, NSSM_EVENT_RSP_ERROR);
  break;

 default:
  port->stats.ns_plogi_unknown_rsp++;
  bfa_trc(port->fcs, els_cmd->els_code);
  bfa_sm_send_event(ns, NSSM_EVENT_RSP_ERROR);
 }
}
