
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int intr_status; } ;
struct TYPE_4__ {TYPE_1__ bfa_regs; } ;
struct bfa_s {scalar_t__ queue_process; TYPE_2__ iocfc; } ;


 int BFI_IOC_MAX_CQS ;
 int __HFN_INT_CPE_MASK ;
 int __HFN_INT_RME_MASK ;
 int bfa_isr_reqq (struct bfa_s*,int) ;
 int bfa_isr_rspq (struct bfa_s*,int) ;
 int bfa_msix_lpu_err (struct bfa_s*,int) ;
 int readl (int ) ;

void
bfa_msix_all(struct bfa_s *bfa, int vec)
{
 u32 intr, qintr;
 int queue;

 intr = readl(bfa->iocfc.bfa_regs.intr_status);
 if (!intr)
  return;




 qintr = intr & __HFN_INT_RME_MASK;
 if (qintr && bfa->queue_process) {
  for (queue = 0; queue < BFI_IOC_MAX_CQS; queue++)
   bfa_isr_rspq(bfa, queue);
 }

 intr &= ~qintr;
 if (!intr)
  return;




 qintr = intr & __HFN_INT_CPE_MASK;
 if (qintr && bfa->queue_process) {
  for (queue = 0; queue < BFI_IOC_MAX_CQS; queue++)
   bfa_isr_reqq(bfa, queue);
 }
 intr &= ~qintr;
 if (!intr)
  return;

 bfa_msix_lpu_err(bfa, intr);
}
