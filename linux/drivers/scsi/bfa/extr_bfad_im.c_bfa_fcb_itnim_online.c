
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_port_s {int im_port; } ;
struct bfad_itnim_s {int queue_work; int itnim_work; int im_port; int state; int fcs_itnim; int bfa_itnim; struct bfad_im_s* im; } ;
struct bfad_im_s {int drv_workq; } ;


 int ITNIM_STATE_ONLINE ;
 struct bfad_port_s* bfa_fcs_itnim_get_drvport (int *) ;
 int bfa_fcs_itnim_get_halitn (int *) ;
 int queue_work (int ,int *) ;

void
bfa_fcb_itnim_online(struct bfad_itnim_s *itnim_drv)
{
 struct bfad_port_s *port;
 struct bfad_im_s *im = itnim_drv->im;

 itnim_drv->bfa_itnim = bfa_fcs_itnim_get_halitn(&itnim_drv->fcs_itnim);
 port = bfa_fcs_itnim_get_drvport(&itnim_drv->fcs_itnim);
 itnim_drv->state = ITNIM_STATE_ONLINE;
 itnim_drv->queue_work = 1;
 itnim_drv->im_port = port->im_port;


 if (itnim_drv->queue_work)
  queue_work(im->drv_workq, &itnim_drv->itnim_work);
}
