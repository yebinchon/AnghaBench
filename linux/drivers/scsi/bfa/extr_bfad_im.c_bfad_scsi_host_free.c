
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfad_s {TYPE_1__* im; } ;
struct bfad_im_port_s {int flags; int bfad; } ;
struct TYPE_2__ {int drv_workq; } ;


 int BFAD_PORT_DELETE ;
 int bfad_im_port_clean (struct bfad_im_port_s*) ;
 int bfad_im_scsi_host_free (int ,struct bfad_im_port_s*) ;
 int flush_workqueue (int ) ;
 int kfree (struct bfad_im_port_s*) ;

void
bfad_scsi_host_free(struct bfad_s *bfad, struct bfad_im_port_s *im_port)
{
 if (!(im_port->flags & BFAD_PORT_DELETE))
  flush_workqueue(bfad->im->drv_workq);
 bfad_im_scsi_host_free(im_port->bfad, im_port);
 bfad_im_port_clean(im_port);
 kfree(im_port);
}
