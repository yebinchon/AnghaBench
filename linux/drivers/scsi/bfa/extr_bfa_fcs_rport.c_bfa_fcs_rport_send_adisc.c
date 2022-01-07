
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_7__ {int adisc_sent; } ;
struct bfa_fcs_rport_s {TYPE_3__ stats; int pid; struct bfa_fcxp_s* fcxp; int fcxp_wqe; int pwwn; int fcs; struct bfa_fcs_lport_s* port; } ;
struct TYPE_5__ {int nwwn; int pwwn; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_2__* fabric; TYPE_1__ port_cfg; TYPE_4__* fcs; } ;
struct TYPE_8__ {int bfa; } ;
struct TYPE_6__ {int vf_id; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_ELS_TOV ;
 int FC_MAX_PDUSZ ;
 int RPSM_EVENT_FCXP_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_4__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_rport_s*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_rport_adisc_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,struct bfa_fcs_rport_s*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_adisc_build (struct fchs_s*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_send_adisc(void *rport_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_rport_s *rport = rport_cbarg;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fchs_s fchs;
 int len;
 struct bfa_fcxp_s *fcxp;

 bfa_trc(rport->fcs, rport->pwwn);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &rport->fcxp_wqe,
    bfa_fcs_rport_send_adisc, rport, BFA_TRUE);
  return;
 }
 rport->fcxp = fcxp;

 len = fc_adisc_build(&fchs, bfa_fcxp_get_reqbuf(fcxp), rport->pid,
    bfa_fcs_lport_get_fcid(port), 0,
    port->port_cfg.pwwn, port->port_cfg.nwwn);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
   FC_CLASS_3, len, &fchs, bfa_fcs_rport_adisc_response,
   rport, FC_MAX_PDUSZ, FC_ELS_TOV);

 rport->stats.adisc_sent++;
 bfa_sm_send_event(rport, RPSM_EVENT_FCXP_SENT);
}
