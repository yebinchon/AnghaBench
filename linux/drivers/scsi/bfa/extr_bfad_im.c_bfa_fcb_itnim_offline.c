
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct bfad_s {TYPE_1__ pport; } ;
struct bfad_port_s {int flags; int im_port; struct bfad_s* bfad; } ;
struct bfad_itnim_s {int queue_work; int itnim_work; int state; int im_port; int fcs_itnim; struct bfad_im_s* im; } ;
struct bfad_im_s {int drv_workq; } ;


 int BFAD_PORT_DELETE ;
 int ITNIM_STATE_OFFLINE ;
 int ITNIM_STATE_OFFLINE_PENDING ;
 struct bfad_port_s* bfa_fcs_itnim_get_drvport (int *) ;
 int queue_work (int ,int *) ;

void
bfa_fcb_itnim_offline(struct bfad_itnim_s *itnim_drv)
{
 struct bfad_port_s *port;
 struct bfad_s *bfad;
 struct bfad_im_s *im = itnim_drv->im;

 port = bfa_fcs_itnim_get_drvport(&itnim_drv->fcs_itnim);
 bfad = port->bfad;
 if ((bfad->pport.flags & BFAD_PORT_DELETE) ||
   (port->flags & BFAD_PORT_DELETE)) {
  itnim_drv->state = ITNIM_STATE_OFFLINE;
  return;
 }
 itnim_drv->im_port = port->im_port;
 itnim_drv->state = ITNIM_STATE_OFFLINE_PENDING;
 itnim_drv->queue_work = 1;


 if (itnim_drv->queue_work)
  queue_work(im->drv_workq, &itnim_drv->itnim_work);
}
