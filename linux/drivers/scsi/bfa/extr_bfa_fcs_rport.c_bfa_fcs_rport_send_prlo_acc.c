
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int bfa_rport; int reply_oxid; int pid; int fcs; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; int fcs; } ;
struct TYPE_2__ {int vf_id; } ;


 int BFA_FALSE ;
 int FC_CLASS_3 ;
 int FC_MAX_PDUSZ ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (int ,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int ,int ,int ,int ,int ,int,struct fchs_s*,int *,int *,int ,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_prlo_acc_build (struct fchs_s*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_send_prlo_acc(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 int len;

 bfa_trc(rport->fcs, rport->pid);

 fcxp = bfa_fcs_fcxp_alloc(port->fcs, BFA_FALSE);
 if (!fcxp)
  return;
 len = fc_prlo_acc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
   rport->pid, bfa_fcs_lport_get_fcid(port),
   rport->reply_oxid, 0);

 bfa_fcxp_send(fcxp, rport->bfa_rport, port->fabric->vf_id,
  port->lp_tag, BFA_FALSE, FC_CLASS_3, len, &fchs,
  ((void*)0), ((void*)0), FC_MAX_PDUSZ, 0);
}
