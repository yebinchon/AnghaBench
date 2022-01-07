
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {scalar_t__ cmd_rsp_code; int reason_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int pwwn; int fcs; } ;
typedef int bfa_status_t ;


 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;


 scalar_t__ CT_RSP_ACCEPT ;
 int RPSM_EVENT_ACCEPTED ;
 int RPSM_EVENT_FAILED ;
 int RPSM_EVENT_TIMEOUT ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_gpnid_response(void *fcsarg, struct bfa_fcxp_s *fcxp, void *cbarg,
    bfa_status_t req_status, u32 rsp_len,
    u32 resid_len, struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_rport_s *rport = (struct bfa_fcs_rport_s *) cbarg;
 struct ct_hdr_s *cthdr;

 bfa_trc(rport->fcs, rport->pwwn);

 cthdr = (struct ct_hdr_s *) BFA_FCXP_RSP_PLD(fcxp);
 cthdr->cmd_rsp_code = be16_to_cpu(cthdr->cmd_rsp_code);

 if (cthdr->cmd_rsp_code == CT_RSP_ACCEPT) {
  bfa_sm_send_event(rport, RPSM_EVENT_ACCEPTED);
  return;
 }




 switch (cthdr->reason_code) {
 case 129:



  bfa_sm_send_event(rport, RPSM_EVENT_TIMEOUT);
  break;

 case 128:



  bfa_sm_send_event(rport, RPSM_EVENT_FAILED);
  break;

 default:
  bfa_sm_send_event(rport, RPSM_EVENT_FAILED);
  break;
 }
}
