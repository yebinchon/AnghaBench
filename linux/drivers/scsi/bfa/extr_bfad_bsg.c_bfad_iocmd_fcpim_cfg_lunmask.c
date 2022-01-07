
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_fcpim_lunmask_s {int lun; int rpwwn; int pwwn; int vf_id; int status; } ;


 unsigned int IOCMD_FCPIM_LUNMASK_ADD ;
 unsigned int IOCMD_FCPIM_LUNMASK_DELETE ;
 int bfa_fcpim_lunmask_add (int *,int ,int *,int ,int ) ;
 int bfa_fcpim_lunmask_delete (int *,int ,int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_fcpim_cfg_lunmask(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_fcpim_lunmask_s *iocmd =
    (struct bfa_bsg_fcpim_lunmask_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (v_cmd == IOCMD_FCPIM_LUNMASK_ADD)
  iocmd->status = bfa_fcpim_lunmask_add(&bfad->bfa, iocmd->vf_id,
     &iocmd->pwwn, iocmd->rpwwn, iocmd->lun);
 else if (v_cmd == IOCMD_FCPIM_LUNMASK_DELETE)
  iocmd->status = bfa_fcpim_lunmask_delete(&bfad->bfa,
     iocmd->vf_id, &iocmd->pwwn,
     iocmd->rpwwn, iocmd->lun);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 return 0;
}
