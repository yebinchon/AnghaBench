
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fchs_s {scalar_t__ s_id; scalar_t__ d_id; scalar_t__ type; } ;
struct fc_els_cmd_s {scalar_t__ els_code; } ;
struct bfa_fcs_rport_s {int itnim; int fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int dummy; } ;







 int FC_LS_RJT_EXP_NO_ADDL_INFO ;
 int FC_LS_RJT_RSN_CMD_NOT_SUPP ;
 scalar_t__ FC_TYPE_ELS ;
 int adisc_rcvd ;
 int bfa_fcs_fcpim_uf_recv (int ,struct fchs_s*,int ) ;
 int bfa_fcs_lport_is_initiator (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rport_process_adisc (struct bfa_fcs_rport_s*,struct fchs_s*,int ) ;
 int bfa_fcs_rport_process_logo (struct bfa_fcs_rport_s*,struct fchs_s*) ;
 int bfa_fcs_rport_process_prli (struct bfa_fcs_rport_s*,struct fchs_s*,int ) ;
 int bfa_fcs_rport_process_rpsc (struct bfa_fcs_rport_s*,struct fchs_s*,int ) ;
 int bfa_fcs_rport_send_ls_rjt (struct bfa_fcs_rport_s*,struct fchs_s*,int ,int ) ;
 int bfa_stats (struct bfa_fcs_lport_s*,int ) ;
 int bfa_trc (int ,scalar_t__) ;
 int plogi_rcvd ;
 int prli_rcvd ;
 int prlo_rcvd ;
 int rpsc_rcvd ;
 int un_handled_els_rcvd ;

void
bfa_fcs_rport_uf_recv(struct bfa_fcs_rport_s *rport,
   struct fchs_s *fchs, u16 len)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct fc_els_cmd_s *els_cmd;

 bfa_trc(rport->fcs, fchs->s_id);
 bfa_trc(rport->fcs, fchs->d_id);
 bfa_trc(rport->fcs, fchs->type);

 if (fchs->type != FC_TYPE_ELS)
  return;

 els_cmd = (struct fc_els_cmd_s *) (fchs + 1);

 bfa_trc(rport->fcs, els_cmd->els_code);

 switch (els_cmd->els_code) {
 case 131:
  bfa_stats(port, plogi_rcvd);
  bfa_fcs_rport_process_logo(rport, fchs);
  break;

 case 132:
  bfa_stats(port, adisc_rcvd);
  bfa_fcs_rport_process_adisc(rport, fchs, len);
  break;

 case 129:
  bfa_stats(port, prlo_rcvd);
  if (bfa_fcs_lport_is_initiator(port))
   bfa_fcs_fcpim_uf_recv(rport->itnim, fchs, len);
  break;

 case 130:
  bfa_stats(port, prli_rcvd);
  bfa_fcs_rport_process_prli(rport, fchs, len);
  break;

 case 128:
  bfa_stats(port, rpsc_rcvd);
  bfa_fcs_rport_process_rpsc(rport, fchs, len);
  break;

 default:
  bfa_stats(port, un_handled_els_rcvd);
  bfa_fcs_rport_send_ls_rjt(rport, fchs,
       FC_LS_RJT_RSN_CMD_NOT_SUPP,
       FC_LS_RJT_EXP_NO_ADDL_INFO);
  break;
 }
}
