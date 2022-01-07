
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hw_regs {unsigned int int_dl_cpu2pciea; unsigned int int_comaout; unsigned int int_comaerr; int enpointa_mask_reg; int arm_to_pciea_mask_reg; } ;
struct mvumi_hba {struct mvumi_hw_regs* regs; } ;


 unsigned int ioread32 (int ) ;
 int iowrite32 (unsigned int,int ) ;

__attribute__((used)) static void mvumi_disable_intr(struct mvumi_hba *mhba)
{
 unsigned int mask;
 struct mvumi_hw_regs *regs = mhba->regs;

 iowrite32(0, regs->arm_to_pciea_mask_reg);
 mask = ioread32(regs->enpointa_mask_reg);
 mask &= ~(regs->int_dl_cpu2pciea | regs->int_comaout |
       regs->int_comaerr);
 iowrite32(mask, regs->enpointa_mask_reg);
}
