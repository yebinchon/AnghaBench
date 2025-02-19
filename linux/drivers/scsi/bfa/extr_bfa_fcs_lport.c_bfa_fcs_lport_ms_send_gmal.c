
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_ms_s {struct bfa_fcxp_s* fcxp; int fcxp_wqe; TYPE_3__* port; } ;
struct TYPE_9__ {int lp_tag; TYPE_2__* fabric; TYPE_4__* fcs; int pid; } ;
typedef TYPE_3__ bfa_fcs_lport_t ;
struct TYPE_10__ {int bfa; } ;
struct TYPE_8__ {int vf_id; TYPE_1__* lps; } ;
struct TYPE_7__ {int pr_nwwn; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_FCCT_TOV ;
 int FC_MAX_PDUSZ ;
 int MSSM_EVENT_FCXP_SENT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_4__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_fcs_lport_get_fcid (TYPE_3__*) ;
 int bfa_fcs_lport_ms_gmal_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,void*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_trc (TYPE_4__*,int ) ;
 int fc_gmal_req_build (struct fchs_s*,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_ms_send_gmal(void *ms_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_lport_ms_s *ms = ms_cbarg;
 bfa_fcs_lport_t *port = ms->port;
 struct fchs_s fchs;
 int len;
 struct bfa_fcxp_s *fcxp;

 bfa_trc(port->fcs, port->pid);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &ms->fcxp_wqe,
    bfa_fcs_lport_ms_send_gmal, ms, BFA_TRUE);
  return;
 }
 ms->fcxp = fcxp;

 len = fc_gmal_req_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
        bfa_fcs_lport_get_fcid(port),
     port->fabric->lps->pr_nwwn);

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
     FC_CLASS_3, len, &fchs,
     bfa_fcs_lport_ms_gmal_response, (void *)ms,
     FC_MAX_PDUSZ, FC_FCCT_TOV);

 bfa_sm_send_event(ms, MSSM_EVENT_FCXP_SENT);
}
