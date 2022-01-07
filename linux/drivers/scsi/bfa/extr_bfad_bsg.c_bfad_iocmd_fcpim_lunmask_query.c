
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_lunmask_cfg_s {int dummy; } ;
struct bfa_bsg_fcpim_lunmask_query_s {int status; struct bfa_lunmask_cfg_s lun_mask; } ;


 int bfa_fcpim_lunmask_query (int *,struct bfa_lunmask_cfg_s*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_fcpim_lunmask_query(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fcpim_lunmask_query_s *iocmd =
   (struct bfa_bsg_fcpim_lunmask_query_s *)cmd;
 struct bfa_lunmask_cfg_s *lun_mask = &iocmd->lun_mask;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_fcpim_lunmask_query(&bfad->bfa, lun_mask);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 return 0;
}
