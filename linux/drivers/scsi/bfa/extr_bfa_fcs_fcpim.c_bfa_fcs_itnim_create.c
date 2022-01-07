
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_itnim_s {int dummy; } ;
struct bfa_fcs_rport_s {int fcs; int pwwn; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
struct bfa_fcs_itnim_s {void* task_retry_id; void* conf_comp; void* rec_support; void* seq_rec; int * bfa_itnim; struct bfad_itnim_s* itnim_drv; int fcs; struct bfa_fcs_rport_s* rport; } ;
struct TYPE_2__ {int bfad; } ;


 void* BFA_FALSE ;
 int bfa_fcb_itnim_alloc (int ,struct bfa_fcs_itnim_s**,struct bfad_itnim_s**) ;
 int bfa_fcs_itnim_sm_offline ;
 int bfa_sm_set_state (struct bfa_fcs_itnim_s*,int ) ;
 int bfa_trc (TYPE_1__*,int ) ;

struct bfa_fcs_itnim_s *
bfa_fcs_itnim_create(struct bfa_fcs_rport_s *rport)
{
 struct bfa_fcs_lport_s *port = rport->port;
 struct bfa_fcs_itnim_s *itnim;
 struct bfad_itnim_s *itnim_drv;
 int ret;




 ret = bfa_fcb_itnim_alloc(port->fcs->bfad, &itnim, &itnim_drv);
 if (ret) {
  bfa_trc(port->fcs, rport->pwwn);
  return ((void*)0);
 }




 itnim->rport = rport;
 itnim->fcs = rport->fcs;
 itnim->itnim_drv = itnim_drv;

 itnim->bfa_itnim = ((void*)0);
 itnim->seq_rec = BFA_FALSE;
 itnim->rec_support = BFA_FALSE;
 itnim->conf_comp = BFA_FALSE;
 itnim->task_retry_id = BFA_FALSE;




 bfa_sm_set_state(itnim, bfa_fcs_itnim_sm_offline);

 return itnim;
}
