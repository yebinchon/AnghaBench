
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {scalar_t__ cmd_rsp_code; scalar_t__ reason_code; scalar_t__ exp_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_4__ {int ns_rffid_rejects; int ns_rffid_accepts; int ns_rffid_rsp_err; } ;
struct TYPE_3__ {scalar_t__ pwwn; } ;
struct bfa_fcs_lport_s {int fcs; TYPE_2__ stats; TYPE_1__ port_cfg; } ;
struct bfa_fcs_lport_ns_s {struct bfa_fcs_lport_s* port; } ;
typedef scalar_t__ bfa_status_t ;


 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ CT_RSN_NOT_SUPP ;
 scalar_t__ CT_RSP_ACCEPT ;
 int NSSM_EVENT_RSP_ERROR ;
 int NSSM_EVENT_RSP_OK ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ns_s*,int ) ;
 int bfa_trc (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_rff_id_response(void *fcsarg, struct bfa_fcxp_s *fcxp,
    void *cbarg, bfa_status_t req_status,
    u32 rsp_len, u32 resid_len,
    struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_lport_ns_s *ns = (struct bfa_fcs_lport_ns_s *) cbarg;
 struct bfa_fcs_lport_s *port = ns->port;
 struct ct_hdr_s *cthdr = ((void*)0);

 bfa_trc(port->fcs, port->port_cfg.pwwn);




 if (req_status != BFA_STATUS_OK) {
  bfa_trc(port->fcs, req_status);
  port->stats.ns_rffid_rsp_err++;
  bfa_sm_send_event(ns, NSSM_EVENT_RSP_ERROR);
  return;
 }

 cthdr = (struct ct_hdr_s *) BFA_FCXP_RSP_PLD(fcxp);
 cthdr->cmd_rsp_code = be16_to_cpu(cthdr->cmd_rsp_code);

 if (cthdr->cmd_rsp_code == CT_RSP_ACCEPT) {
  port->stats.ns_rffid_accepts++;
  bfa_sm_send_event(ns, NSSM_EVENT_RSP_OK);
  return;
 }

 port->stats.ns_rffid_rejects++;
 bfa_trc(port->fcs, cthdr->reason_code);
 bfa_trc(port->fcs, cthdr->exp_code);

 if (cthdr->reason_code == CT_RSN_NOT_SUPP) {

  bfa_sm_send_event(ns, NSSM_EVENT_RSP_OK);
 } else
  bfa_sm_send_event(ns, NSSM_EVENT_RSP_ERROR);
}
