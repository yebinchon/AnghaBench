
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intr_mask; } ;
struct TYPE_4__ {TYPE_1__ bfa_regs; } ;
struct bfa_s {TYPE_2__ iocfc; int intr_enabled; } ;


 int BFA_FALSE ;
 int bfa_isr_mode_set (struct bfa_s*,int ) ;
 int bfa_msix_uninstall (struct bfa_s*) ;
 int writel (long,int ) ;

void
bfa_isr_disable(struct bfa_s *bfa)
{
 bfa->intr_enabled = BFA_FALSE;
 bfa_isr_mode_set(bfa, BFA_FALSE);
 writel(-1L, bfa->iocfc.bfa_regs.intr_mask);
 bfa_msix_uninstall(bfa);
}
