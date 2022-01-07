
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
typedef scalar_t__ u32 ;
struct fchs_s {int dummy; } ;
struct fcgs_gmal_resp_s {scalar_t__ ms_ma; int ms_len; } ;
struct fcgs_gmal_entry_s {char* prefix; int len; int ip_addr; } ;
struct ct_hdr_s {scalar_t__ cmd_rsp_code; int exp_code; int reason_code; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_ms_s {TYPE_2__* port; } ;
typedef int bfa_status_t ;
struct TYPE_4__ {int pwwn; } ;
struct TYPE_5__ {int fcs; TYPE_1__ port_cfg; } ;
typedef TYPE_2__ bfa_fcs_lport_t ;


 int BFA_FCS_FABRIC_IPADDR_SZ ;
 scalar_t__ BFA_FCXP_RSP_PLD (struct bfa_fcxp_s*) ;
 int BFA_STATUS_OK ;
 int CT_GMAL_RESP_PREFIX_HTTP ;
 scalar_t__ CT_RSP_ACCEPT ;
 int MSSM_EVENT_RSP_ERROR ;
 int MSSM_EVENT_RSP_OK ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 int bfa_fcs_lport_get_fabric_ipaddr (TYPE_2__*) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_trc (int ,int ) ;
 int strlcpy (int ,int ,int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static void
bfa_fcs_lport_ms_gmal_response(void *fcsarg, struct bfa_fcxp_s *fcxp,
    void *cbarg, bfa_status_t req_status,
    u32 rsp_len, u32 resid_len,
    struct fchs_s *rsp_fchs)
{
 struct bfa_fcs_lport_ms_s *ms = (struct bfa_fcs_lport_ms_s *) cbarg;
 bfa_fcs_lport_t *port = ms->port;
 struct ct_hdr_s *cthdr = ((void*)0);
 struct fcgs_gmal_resp_s *gmal_resp;
 struct fcgs_gmal_entry_s *gmal_entry;
 u32 num_entries;
 u8 *rsp_str;

 bfa_trc(port->fcs, req_status);
 bfa_trc(port->fcs, port->port_cfg.pwwn);




 if (req_status != BFA_STATUS_OK) {
  bfa_trc(port->fcs, req_status);
  bfa_sm_send_event(ms, MSSM_EVENT_RSP_ERROR);
  return;
 }

 cthdr = (struct ct_hdr_s *) BFA_FCXP_RSP_PLD(fcxp);
 cthdr->cmd_rsp_code = be16_to_cpu(cthdr->cmd_rsp_code);

 if (cthdr->cmd_rsp_code == CT_RSP_ACCEPT) {
  gmal_resp = (struct fcgs_gmal_resp_s *)(cthdr + 1);

  num_entries = be32_to_cpu(gmal_resp->ms_len);
  if (num_entries == 0) {
   bfa_sm_send_event(ms, MSSM_EVENT_RSP_ERROR);
   return;
  }







  gmal_entry = (struct fcgs_gmal_entry_s *)gmal_resp->ms_ma;
  while (num_entries > 0) {
   if (strncmp(gmal_entry->prefix,
    CT_GMAL_RESP_PREFIX_HTTP,
    sizeof(gmal_entry->prefix)) == 0) {






    rsp_str = &(gmal_entry->prefix[0]);
    if (rsp_str[gmal_entry->len-1] == '/')
     rsp_str[gmal_entry->len-1] = 0;


    strlcpy(bfa_fcs_lport_get_fabric_ipaddr(port),
     gmal_entry->ip_addr,
     BFA_FCS_FABRIC_IPADDR_SZ);
    break;
   } else {
    --num_entries;
    ++gmal_entry;
   }
  }

  bfa_sm_send_event(ms, MSSM_EVENT_RSP_OK);
  return;
 }

 bfa_trc(port->fcs, cthdr->reason_code);
 bfa_trc(port->fcs, cthdr->exp_code);
 bfa_sm_send_event(ms, MSSM_EVENT_RSP_ERROR);
}
