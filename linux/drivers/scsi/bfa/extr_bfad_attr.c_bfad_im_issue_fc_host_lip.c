
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;


 scalar_t__ BFA_STATUS_OK ;
 int EIO ;
 scalar_t__ bfa_port_disable (int *,int ,struct bfad_hal_comp*) ;
 scalar_t__ bfa_port_enable (int *,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_im_issue_fc_host_lip(struct Scsi_Host *shost)
{
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_s *bfad = im_port->bfad;
 struct bfad_hal_comp fcomp;
 unsigned long flags;
 uint32_t status;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 status = bfa_port_disable(&bfad->bfa.modules.port,
     bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (status != BFA_STATUS_OK)
  return -EIO;

 wait_for_completion(&fcomp.comp);
 if (fcomp.status != BFA_STATUS_OK)
  return -EIO;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 status = bfa_port_enable(&bfad->bfa.modules.port,
     bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (status != BFA_STATUS_OK)
  return -EIO;

 wait_for_completion(&fcomp.comp);
 if (fcomp.status != BFA_STATUS_OK)
  return -EIO;

 return 0;
}
