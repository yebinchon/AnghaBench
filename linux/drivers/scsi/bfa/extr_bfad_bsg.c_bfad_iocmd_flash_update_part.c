
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct bfa_bsg_flash_s {scalar_t__ status; int bufsz; int instance; int type; } ;


 int BFA_FLASH (int *) ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_VERSION_FAIL ;
 scalar_t__ bfa_flash_update_part (int ,int ,int ,void*,int ,int ,int ,struct bfad_hal_comp*) ;
 scalar_t__ bfad_chk_iocmd_sz (unsigned int,int,int ) ;
 int bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_flash_update_part(struct bfad_s *bfad, void *cmd,
   unsigned int payload_len)
{
 struct bfa_bsg_flash_s *iocmd = (struct bfa_bsg_flash_s *)cmd;
 void *iocmd_bufptr;
 struct bfad_hal_comp fcomp;
 unsigned long flags;

 if (bfad_chk_iocmd_sz(payload_len,
   sizeof(struct bfa_bsg_flash_s),
   iocmd->bufsz) != BFA_STATUS_OK) {
  iocmd->status = BFA_STATUS_VERSION_FAIL;
  return 0;
 }

 iocmd_bufptr = (char *)iocmd + sizeof(struct bfa_bsg_flash_s);

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_flash_update_part(BFA_FLASH(&bfad->bfa),
    iocmd->type, iocmd->instance, iocmd_bufptr,
    iocmd->bufsz, 0, bfad_hcb_comp, &fcomp);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK)
  goto out;
 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
