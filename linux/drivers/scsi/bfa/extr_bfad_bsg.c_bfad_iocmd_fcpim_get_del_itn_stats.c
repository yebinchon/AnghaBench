
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_fcpim_s {int del_itn_stats; } ;
struct bfa_fcpim_del_itn_stats_s {int dummy; } ;
struct bfa_bsg_fcpim_del_itn_stats_s {int status; int modstats; } ;


 struct bfa_fcpim_s* BFA_FCPIM (int *) ;
 int BFA_STATUS_OK ;
 int memcpy (void*,void*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_fcpim_get_del_itn_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fcpim_del_itn_stats_s *iocmd =
   (struct bfa_bsg_fcpim_del_itn_stats_s *)cmd;
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(&bfad->bfa);
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 memcpy((void *)&iocmd->modstats, (void *)&fcpim->del_itn_stats,
  sizeof(struct bfa_fcpim_del_itn_stats_s));
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 iocmd->status = BFA_STATUS_OK;
 return 0;
}
