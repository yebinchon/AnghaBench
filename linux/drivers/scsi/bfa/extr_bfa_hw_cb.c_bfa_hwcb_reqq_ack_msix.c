
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intr_status; } ;
struct TYPE_4__ {TYPE_1__ bfa_regs; } ;
struct bfa_s {TYPE_2__ iocfc; int ioc; } ;


 int CPE_Q_NUM (int ,int) ;
 int __HFN_INT_CPE_Q0 ;
 int bfa_ioc_pcifn (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static void
bfa_hwcb_reqq_ack_msix(struct bfa_s *bfa, int reqq)
{
 writel(__HFN_INT_CPE_Q0 << CPE_Q_NUM(bfa_ioc_pcifn(&bfa->ioc), reqq),
   bfa->iocfc.bfa_regs.intr_status);
}
