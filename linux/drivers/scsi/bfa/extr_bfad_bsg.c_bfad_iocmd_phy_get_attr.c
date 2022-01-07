
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_bsg_phy_attr_s {scalar_t__ status; int attr; int instance; } ;


 int BFA_PHY (int *) ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_phy_get_attr (int ,int ,int *,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_phy_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_phy_attr_s *iocmd =
   (struct bfa_bsg_phy_attr_s *)cmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_phy_get_attr(BFA_PHY(&bfad->bfa), iocmd->instance,
    &iocmd->attr, bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK)
  goto out;
 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
