
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfad_hal_comp {int comp; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef scalar_t__ bfa_status_t ;


 int BFA_FCPORT (int *) ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_port_clear_stats (int ,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void
bfad_im_reset_stats(struct Scsi_Host *shost)
{
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_s *bfad = im_port->bfad;
 struct bfad_hal_comp fcomp;
 unsigned long flags;
 bfa_status_t rc;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 rc = bfa_port_clear_stats(BFA_FCPORT(&bfad->bfa), bfad_hcb_comp,
     &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (rc != BFA_STATUS_OK)
  return;

 wait_for_completion(&fcomp.comp);

 return;
}
