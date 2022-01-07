
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc; } ;
struct bfad_s {int bfad_lock; TYPE_1__ bfa; } ;
struct bfa_bsg_gen_s {int status; } ;


 int BFA_STATUS_OK ;
 unsigned int IOCMD_IOC_RESET_FWSTATS ;
 unsigned int IOCMD_IOC_RESET_STATS ;
 int bfa_ioc_clear_stats (TYPE_1__*) ;
 int bfa_ioc_fw_stats_clear (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_ioc_reset_stats(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 unsigned long flags;

 if (v_cmd == IOCMD_IOC_RESET_STATS) {
  bfa_ioc_clear_stats(&bfad->bfa);
  iocmd->status = BFA_STATUS_OK;
 } else if (v_cmd == IOCMD_IOC_RESET_FWSTATS) {
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  iocmd->status = bfa_ioc_fw_stats_clear(&bfad->bfa.ioc);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 }

 return 0;
}
