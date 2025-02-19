
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int dummy; } ;
struct bfa_lport_cfg_s {int roles; } ;
struct bfa_fcs_vport_s {int * vport_drv; } ;
struct bfa_fcs_lport_s {TYPE_2__* fabric; struct bfa_lport_cfg_s port_cfg; TYPE_1__* fcs; int bfad_port; struct bfa_fcs_vport_s* vport; } ;
struct TYPE_4__ {int vf_drv; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;


 int BFA_FCS_PORT_SM_CREATE ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,char*,char*) ;
 int BFA_LPORT_AEN_NEW ;
 int BFA_STRING_32 ;
 int KERN_INFO ;
 int bfa_fcb_lport_new (scalar_t__,struct bfa_fcs_lport_s*,int ,int ,int *) ;
 int bfa_fcs_lport_aen_post (struct bfa_fcs_lport_s*,int ) ;
 int bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;
 int bfa_fcs_lport_sm_uninit ;
 int bfa_log_level ;
 int bfa_sm_send_event (struct bfa_fcs_lport_s*,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_s*,int ) ;
 int wwn2str (char*,int ) ;

void
bfa_fcs_lport_init(struct bfa_fcs_lport_s *lport,
 struct bfa_lport_cfg_s *port_cfg)
{
 struct bfa_fcs_vport_s *vport = lport->vport;
 struct bfad_s *bfad = (struct bfad_s *)lport->fcs->bfad;
 char lpwwn_buf[BFA_STRING_32];

 lport->port_cfg = *port_cfg;

 lport->bfad_port = bfa_fcb_lport_new(lport->fcs->bfad, lport,
     lport->port_cfg.roles,
     lport->fabric->vf_drv,
     vport ? vport->vport_drv : ((void*)0));

 wwn2str(lpwwn_buf, bfa_fcs_lport_get_pwwn(lport));
 BFA_LOG(KERN_INFO, bfad, bfa_log_level,
  "New logical port created: WWN = %s Role = %s\n",
  lpwwn_buf, "Initiator");
 bfa_fcs_lport_aen_post(lport, BFA_LPORT_AEN_NEW);

 bfa_sm_set_state(lport, bfa_fcs_lport_sm_uninit);
 bfa_sm_send_event(lport, BFA_FCS_PORT_SM_CREATE);
}
