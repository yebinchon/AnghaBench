
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fchs_s {int ox_id; int s_id; int d_id; } ;
struct bfa_rport_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; int fcs; } ;
struct TYPE_2__ {int vf_id; } ;


 int BFA_FALSE ;
 int FC_CLASS_3 ;
 int FC_MAX_PDUSZ ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (int ,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,struct bfa_rport_s*,int ,int ,int ,int ,int,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_ls_rjt_build (struct fchs_s*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_send_ls_rjt(struct bfa_fcs_lport_s *port, struct fchs_s *rx_fchs,
    u8 reason_code, u8 reason_code_expl)
{
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 struct bfa_rport_s *bfa_rport = ((void*)0);
 int len;

 bfa_trc(port->fcs, rx_fchs->d_id);
 bfa_trc(port->fcs, rx_fchs->s_id);

 fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp)
  return;

 len = fc_ls_rjt_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
         rx_fchs->s_id, bfa_fcs_lport_get_fcid(port),
         rx_fchs->ox_id, reason_code, reason_code_expl);

 bfa_fcxp_send(fcxp, bfa_rport, port->fabric->vf_id, port->lp_tag,
     BFA_FALSE, FC_CLASS_3, len, &fchs, ((void*)0), ((void*)0),
     FC_MAX_PDUSZ, 0);
}
