
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_diag_dport_show_s {int result; int status; } ;


 int bfa_dport_show (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_diag_dport_show(struct bfad_s *bfad, void *pcmd)
{
 struct bfa_bsg_diag_dport_show_s *iocmd =
    (struct bfa_bsg_diag_dport_show_s *)pcmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 iocmd->status = bfa_dport_show(&bfad->bfa, &iocmd->result);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
