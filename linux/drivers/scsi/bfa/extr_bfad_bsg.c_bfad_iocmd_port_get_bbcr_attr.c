
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_bbcr_attr_s {int attr; int status; } ;


 int bfa_fcport_get_bbcr_attr (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_port_get_bbcr_attr(struct bfad_s *bfad, void *pcmd)
{
 struct bfa_bsg_bbcr_attr_s *iocmd = (struct bfa_bsg_bbcr_attr_s *) pcmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status =
  bfa_fcport_get_bbcr_attr(&bfad->bfa, &iocmd->attr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
