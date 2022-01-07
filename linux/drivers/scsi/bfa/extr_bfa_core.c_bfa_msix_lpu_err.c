
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int pss_err_status_reg; int ll_halt; } ;
struct TYPE_7__ {int device_id; } ;
struct TYPE_11__ {TYPE_2__ ioc_regs; TYPE_1__ pcidev; } ;
struct TYPE_9__ {int intr_status; } ;
struct TYPE_10__ {TYPE_3__ bfa_regs; } ;
struct bfa_s {TYPE_5__ ioc; TYPE_4__ iocfc; } ;
typedef int bfa_boolean_t ;


 int __FW_INIT_HALT_P ;
 int __HFN_INT_CPQ_HALT_CT2 ;
 int __HFN_INT_ERR_MASK ;
 int __HFN_INT_ERR_MASK_CT2 ;
 int __HFN_INT_ERR_PSS ;
 int __HFN_INT_ERR_PSS_CT2 ;
 int __HFN_INT_LL_HALT ;
 int __HFN_INT_MBOX_LPU0 ;
 int __HFN_INT_MBOX_LPU0_CT2 ;
 int __HFN_INT_MBOX_LPU1 ;
 int __HFN_INT_MBOX_LPU1_CT2 ;
 scalar_t__ bfa_asic_id_ct (int ) ;
 scalar_t__ bfa_asic_id_ct2 (int ) ;
 int bfa_ioc_error_isr (TYPE_5__*) ;
 int bfa_ioc_mbox_isr (TYPE_5__*) ;
 int readl (int ) ;
 int writel (int,int ) ;

void
bfa_msix_lpu_err(struct bfa_s *bfa, int vec)
{
 u32 intr, curr_value;
 bfa_boolean_t lpu_isr, halt_isr, pss_isr;

 intr = readl(bfa->iocfc.bfa_regs.intr_status);

 if (bfa_asic_id_ct2(bfa->ioc.pcidev.device_id)) {
  halt_isr = intr & __HFN_INT_CPQ_HALT_CT2;
  pss_isr = intr & __HFN_INT_ERR_PSS_CT2;
  lpu_isr = intr & (__HFN_INT_MBOX_LPU0_CT2 |
       __HFN_INT_MBOX_LPU1_CT2);
  intr &= __HFN_INT_ERR_MASK_CT2;
 } else {
  halt_isr = bfa_asic_id_ct(bfa->ioc.pcidev.device_id) ?
       (intr & __HFN_INT_LL_HALT) : 0;
  pss_isr = intr & __HFN_INT_ERR_PSS;
  lpu_isr = intr & (__HFN_INT_MBOX_LPU0 | __HFN_INT_MBOX_LPU1);
  intr &= __HFN_INT_ERR_MASK;
 }

 if (lpu_isr)
  bfa_ioc_mbox_isr(&bfa->ioc);

 if (intr) {
  if (halt_isr) {





   curr_value = readl(bfa->ioc.ioc_regs.ll_halt);
   curr_value &= ~__FW_INIT_HALT_P;
   writel(curr_value, bfa->ioc.ioc_regs.ll_halt);
  }

  if (pss_isr) {





   curr_value = readl(
     bfa->ioc.ioc_regs.pss_err_status_reg);
   writel(curr_value,
    bfa->ioc.ioc_regs.pss_err_status_reg);
  }

  writel(intr, bfa->iocfc.bfa_regs.intr_status);
  bfa_ioc_error_isr(&bfa->ioc);
 }
}
