
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_rport_s {int bfa_rport; int pid; int pwwn; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_1__* fabric; TYPE_3__* fcs; } ;
struct TYPE_5__ {int prli_sent; int fcxp_alloc_wait; } ;
struct bfa_fcs_itnim_s {TYPE_2__ stats; struct bfa_fcs_rport_s* rport; struct bfa_fcxp_s* fcxp; int fcxp_wqe; int fcs; } ;
struct TYPE_6__ {int bfa; } ;
struct TYPE_4__ {int vf_id; } ;


 int BFA_FALSE ;
 int BFA_FCS_ITNIM_SM_FRMSENT ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_ELS_TOV ;
 int FC_MAX_PDUSZ ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_3__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_itnim_s*,int ) ;
 int bfa_fcs_itnim_prli_response ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int ,int ,int ,int ,int ,int,struct fchs_s*,int ,void*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (int ,int ) ;
 int fc_prli_build (struct fchs_s*,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_itnim_send_prli(void *itnim_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_itnim_s *itnim = itnim_cbarg;
 struct bfa_fcs_rport_s *rport = itnim->rport;
 struct bfa_fcs_lport_s *port = rport->port;
 struct fchs_s fchs;
 struct bfa_fcxp_s *fcxp;
 int len;

 bfa_trc(itnim->fcs, itnim->rport->pwwn);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  itnim->stats.fcxp_alloc_wait++;
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &itnim->fcxp_wqe,
    bfa_fcs_itnim_send_prli, itnim, BFA_TRUE);
  return;
 }
 itnim->fcxp = fcxp;

 len = fc_prli_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
       itnim->rport->pid, bfa_fcs_lport_get_fcid(port), 0);

 bfa_fcxp_send(fcxp, rport->bfa_rport, port->fabric->vf_id, port->lp_tag,
        BFA_FALSE, FC_CLASS_3, len, &fchs,
        bfa_fcs_itnim_prli_response, (void *)itnim,
        FC_MAX_PDUSZ, FC_ELS_TOV);

 itnim->stats.prli_sent++;
 bfa_sm_send_event(itnim, BFA_FCS_ITNIM_SM_FRMSENT);
}
