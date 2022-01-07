
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct fchs_s {int dummy; } ;
struct ct_hdr_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct TYPE_7__ {int pwwn; } ;
struct bfa_fcs_lport_s {int lp_tag; TYPE_3__* fabric; TYPE_4__* fcs; TYPE_2__ port_cfg; } ;
struct bfa_fcs_lport_fdmi_s {struct bfa_fcxp_s* fcxp; int fcxp_wqe; TYPE_1__* ms; } ;
struct TYPE_9__ {int bfa; } ;
struct TYPE_8__ {int vf_id; } ;
struct TYPE_6__ {struct bfa_fcs_lport_s* port; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int FC_CLASS_3 ;
 int FC_FCCT_TOV ;
 int FC_MAX_PDUSZ ;
 int FDMISM_EVENT_RPRT_SENT ;
 int FDMI_RPRT ;
 struct bfa_fcxp_s* bfa_fcs_fcxp_alloc (TYPE_4__*,int ) ;
 int bfa_fcs_fcxp_alloc_wait (int ,int *,void (*) (void*,struct bfa_fcxp_s*),struct bfa_fcs_lport_fdmi_s*,int ) ;
 scalar_t__ bfa_fcs_lport_fdmi_build_rprt_pyld (struct bfa_fcs_lport_fdmi_s*,int *) ;
 int bfa_fcs_lport_fdmi_rprt_response ;
 int bfa_fcs_lport_get_fcid (struct bfa_fcs_lport_s*) ;
 int * bfa_fcxp_get_reqbuf (struct bfa_fcxp_s*) ;
 int bfa_fcxp_send (struct bfa_fcxp_s*,int *,int ,int ,int ,int ,scalar_t__,struct fchs_s*,int ,void*,int ,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_lport_fdmi_s*,int ) ;
 int bfa_trc (TYPE_4__*,int ) ;
 scalar_t__ fc_fdmi_reqhdr_build (struct fchs_s*,int *,int ,int ) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_fdmi_send_rprt(void *fdmi_cbarg, struct bfa_fcxp_s *fcxp_alloced)
{
 struct bfa_fcs_lport_fdmi_s *fdmi = fdmi_cbarg;
 struct bfa_fcs_lport_s *port = fdmi->ms->port;
 struct fchs_s fchs;
 u16 len, attr_len;
 struct bfa_fcxp_s *fcxp;
 u8 *pyld;

 bfa_trc(port->fcs, port->port_cfg.pwwn);

 fcxp = fcxp_alloced ? fcxp_alloced :
        bfa_fcs_fcxp_alloc(port->fcs, BFA_TRUE);
 if (!fcxp) {
  bfa_fcs_fcxp_alloc_wait(port->fcs->bfa, &fdmi->fcxp_wqe,
    bfa_fcs_lport_fdmi_send_rprt, fdmi, BFA_TRUE);
  return;
 }
 fdmi->fcxp = fcxp;

 pyld = bfa_fcxp_get_reqbuf(fcxp);
 memset(pyld, 0, FC_MAX_PDUSZ);

 len = fc_fdmi_reqhdr_build(&fchs, pyld, bfa_fcs_lport_get_fcid(port),
       FDMI_RPRT);

 attr_len =
  bfa_fcs_lport_fdmi_build_rprt_pyld(fdmi,
       (u8 *) ((struct ct_hdr_s *) pyld
             + 1));

 bfa_fcxp_send(fcxp, ((void*)0), port->fabric->vf_id, port->lp_tag, BFA_FALSE,
     FC_CLASS_3, len + attr_len, &fchs,
     bfa_fcs_lport_fdmi_rprt_response, (void *)fdmi,
     FC_MAX_PDUSZ, FC_FCCT_TOV);

 bfa_sm_send_event(fdmi, FDMISM_EVENT_RPRT_SENT);
}
