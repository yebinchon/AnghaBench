
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_gen_s {scalar_t__ status; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_STATUS_OK ;
 int BFA_TRUE ;
 unsigned int IOCMD_FCPIM_LUNMASK_CLEAR ;
 unsigned int IOCMD_FCPIM_LUNMASK_DISABLE ;
 unsigned int IOCMD_FCPIM_LUNMASK_ENABLE ;
 scalar_t__ bfa_fcpim_lunmask_clear (int *) ;
 void* bfa_fcpim_lunmask_update (int *,int ) ;
 int bfad_iocmd_lunmask_reset_lunscan_mode (struct bfad_s*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_lunmask(struct bfad_s *bfad, void *pcmd, unsigned int v_cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)pcmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (v_cmd == IOCMD_FCPIM_LUNMASK_ENABLE) {
  iocmd->status = bfa_fcpim_lunmask_update(&bfad->bfa, BFA_TRUE);

  if (iocmd->status == BFA_STATUS_OK)
   bfad_iocmd_lunmask_reset_lunscan_mode(bfad, BFA_TRUE);
 } else if (v_cmd == IOCMD_FCPIM_LUNMASK_DISABLE) {
  iocmd->status = bfa_fcpim_lunmask_update(&bfad->bfa, BFA_FALSE);

  if (iocmd->status == BFA_STATUS_OK)
   bfad_iocmd_lunmask_reset_lunscan_mode(bfad, BFA_FALSE);
 } else if (v_cmd == IOCMD_FCPIM_LUNMASK_CLEAR)
  iocmd->status = bfa_fcpim_lunmask_clear(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 return 0;
}
