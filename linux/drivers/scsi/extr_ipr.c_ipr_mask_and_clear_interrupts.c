
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int sense_interrupt_reg; int clr_interrupt_reg32; int clr_interrupt_reg; int set_interrupt_mask_reg; } ;
struct ipr_ioa_cfg {int hrrq_num; TYPE_2__ regs; scalar_t__ sis64; TYPE_1__* hrrq; } ;
struct TYPE_3__ {int _lock; scalar_t__ allow_interrupts; } ;


 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,int ) ;
 int writeq (int ,int ) ;

__attribute__((used)) static void ipr_mask_and_clear_interrupts(struct ipr_ioa_cfg *ioa_cfg,
       u32 clr_ints)
{
 volatile u32 int_reg;
 int i;


 for (i = 0; i < ioa_cfg->hrrq_num; i++) {
  spin_lock(&ioa_cfg->hrrq[i]._lock);
  ioa_cfg->hrrq[i].allow_interrupts = 0;
  spin_unlock(&ioa_cfg->hrrq[i]._lock);
 }


 if (ioa_cfg->sis64)
  writeq(~0, ioa_cfg->regs.set_interrupt_mask_reg);
 else
  writel(~0, ioa_cfg->regs.set_interrupt_mask_reg);


 if (ioa_cfg->sis64)
  writel(~0, ioa_cfg->regs.clr_interrupt_reg);
 writel(clr_ints, ioa_cfg->regs.clr_interrupt_reg32);
 int_reg = readl(ioa_cfg->regs.sense_interrupt_reg);
}
