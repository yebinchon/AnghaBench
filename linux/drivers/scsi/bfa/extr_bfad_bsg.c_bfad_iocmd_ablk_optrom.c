
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ablk; } ;
struct TYPE_4__ {TYPE_1__ modules; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_bsg_gen_s {scalar_t__ status; } ;


 scalar_t__ BFA_STATUS_OK ;
 unsigned int IOCMD_FLASH_ENABLE_OPTROM ;
 scalar_t__ bfa_ablk_optrom_dis (int *,int ,struct bfad_hal_comp*) ;
 scalar_t__ bfa_ablk_optrom_en (int *,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_ablk_optrom(struct bfad_s *bfad, unsigned int cmd, void *pcmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)pcmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (cmd == IOCMD_FLASH_ENABLE_OPTROM)
  iocmd->status = bfa_ablk_optrom_en(&bfad->bfa.modules.ablk,
     bfad_hcb_comp, &fcomp);
 else
  iocmd->status = bfa_ablk_optrom_dis(&bfad->bfa.modules.ablk,
     bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 if (iocmd->status != BFA_STATUS_OK)
  goto out;

 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
