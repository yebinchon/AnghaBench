
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_bbcr_enable_s {int status; int bb_scn; } ;


 int BFA_FALSE ;
 int BFA_TRUE ;
 int EINVAL ;
 unsigned int IOCMD_PORT_BBCR_DISABLE ;
 unsigned int IOCMD_PORT_BBCR_ENABLE ;
 int bfa_fcport_cfg_bbcr (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_port_cfg_bbcr(struct bfad_s *bfad, unsigned int cmd, void *pcmd)
{
 struct bfa_bsg_bbcr_enable_s *iocmd =
   (struct bfa_bsg_bbcr_enable_s *)pcmd;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (cmd == IOCMD_PORT_BBCR_ENABLE)
  rc = bfa_fcport_cfg_bbcr(&bfad->bfa, BFA_TRUE, iocmd->bb_scn);
 else if (cmd == IOCMD_PORT_BBCR_DISABLE)
  rc = bfa_fcport_cfg_bbcr(&bfad->bfa, BFA_FALSE, 0);
 else {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  return -EINVAL;
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 iocmd->status = rc;
 return 0;
}
