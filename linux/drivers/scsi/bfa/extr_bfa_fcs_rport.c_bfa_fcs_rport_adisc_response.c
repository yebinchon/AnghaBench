
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct fchs_s {int dummy; } ;
struct TYPE_4__ {int els_code; } ;
struct fc_ls_rjt_s {int reason_code_expl; int reason_code; TYPE_2__ els_cmd; } ;
struct fc_adisc_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_3__ {int adisc_rejects; int adisc_accs; int adisc_failed; } ;
struct bfa_fcs_rport_s {int fcs; TYPE_1__ stats; int nwwn; int pwwn; } ;
typedef int bfa_status_t ;


 int BFA_STATUS_OK ;
 scalar_t__ FC_PARSE_OK ;
 int RPSM_EVENT_ACCEPTED ;
 int RPSM_EVENT_FAILED ;
 void* bfa_fcxp_get_rspbuf (struct bfa_fcxp_s*) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;
 scalar_t__ fc_adisc_rsp_parse (struct fc_adisc_s*,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_adisc_response(void *fcsarg, struct bfa_fcxp_s *fcxp, void *cbarg,
    bfa_status_t req_status, u32 rsp_len,
    u32 resid_len, struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;
 void *pld = bfa_fcxp_get_rspbuf(fcxp);
 struct fc_ls_rjt_s *ls_rjt;

 if (req_status != BFA_STATUS_OK) {
  bfa_trc(rport->fcs, req_status);
  rport->stats.adisc_failed++;
  bfa_sm_send_event(rport, RPSM_EVENT_FAILED);
  return;
 }

 if (fc_adisc_rsp_parse((struct fc_adisc_s *)pld, rsp_len, rport->pwwn,
    rport->nwwn) == FC_PARSE_OK) {
  rport->stats.adisc_accs++;
  bfa_sm_send_event(rport, RPSM_EVENT_ACCEPTED);
  return;
 }

 rport->stats.adisc_rejects++;
 ls_rjt = pld;
 bfa_trc(rport->fcs, ls_rjt->els_cmd.els_code);
 bfa_trc(rport->fcs, ls_rjt->reason_code);
 bfa_trc(rport->fcs, ls_rjt->reason_code_expl);
 bfa_sm_send_event(rport, RPSM_EVENT_FAILED);
}
