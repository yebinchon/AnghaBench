
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fchs_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_8__ {int ms_plogi_sent; int ms_plogi_alloc_wait; } ;
struct TYPE_6__ {int nwwn; int pwwn; } ;
struct bfa_fcs_lport_s {TYPE_3__ stats; int lp_tag; TYPE_2__* fabric; TYPE_4__* fcs; TYPE_1__ port_cfg; int pid; } ;
struct bfa_fcs_lport_ms_s {struct bfa_fcxp_s* fcxp; int fcxp_wqe; struct bfa_fcs_lport_s* port; } ;
struct TYPE_9__ {int bfa; } ;
struct TYPE_7__ {int vf_id; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_ELS_TOV ;
 int FC_MAX_PDUSZ ;
 int FC_MGMT_SERVER ;
 int MSSM_EVENT_FCXP_SENT ;
 int bfa_fcport_get_maxfrsize (int ) ;
 int bfa_fcport_get_rx_bbcredit (int ) ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_4__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_ms_plogi_response ;
 int bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,int,struct fchs_s*,int ,void*,int ,int ) ;
 int bfa_hton3b (int ) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ms_s*,int ) ;
 int bfa_trc (TYPE_4__*,int ) ;
 int fc_plogi_build (struct fchs_s*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_ms_send_plogi(void *ms_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_lport_ms_s *ms = ms_cbarg;
 struct bfa_fcs_lport_s *port = ms->port;
 struct fchs_s fchs;
 int len;
 struct bfa_fcxp_s *fcxp;

 bfa_trc(port->fcs, port->pid);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  port->stats.ms_plogi_alloc_wait++;
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &ms->fcxp_wqe,
    bfa_fcs_lport_ms_send_plogi, ms, BFA_TRUE);
  return;
 }
 ms->fcxp = fcxp;

 len = fc_plogi_build(&fchs, bfa_fcxp_get_reqbuf(fcxp),
        bfa_hton3b(FC_MGMT_SERVER),
        bfa_fcs_lport_get_fcid(port), 0,
        port->port_cfg.pwwn, port->port_cfg.nwwn,
        bfa_fcport_get_maxfrsize(port->fcs->bfa),
        bfa_fcport_get_rx_bbcredit(port->fcs->bfa));

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
     FC_CLASS_3, len, &fchs,
     bfa_fcs_lport_ms_plogi_response, (void *)ms,
     FC_MAX_PDUSZ, FC_ELS_TOV);

 port->stats.ms_plogi_sent++;
 bfa_sm_send_event(ms, MSSM_EVENT_FCXP_SENT);
}
