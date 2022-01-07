
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_id; } ;
struct TYPE_4__ {TYPE_1__ ioc; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_ethboot_cfg_s {int dummy; } ;
struct bfa_bsg_ethboot_s {scalar_t__ status; int cfg; } ;


 int BFA_FLASH (TYPE_2__*) ;
 int BFA_FLASH_PART_PXECFG ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ bfa_flash_update_part (int ,int ,int ,int *,int,int ,int ,struct bfad_hal_comp*) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_ethboot_cfg(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_ethboot_s *iocmd = (struct bfa_bsg_ethboot_s *)cmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_flash_update_part(BFA_FLASH(&bfad->bfa),
    BFA_FLASH_PART_PXECFG,
    bfad->bfa.ioc.port_id, &iocmd->cfg,
    sizeof(struct bfa_ethboot_cfg_s), 0,
    bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK)
  goto out;
 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
