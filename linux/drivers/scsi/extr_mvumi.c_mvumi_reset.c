
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hw_regs {int pciea_to_arm_drbl_reg; int arm_to_pciea_msg1; int enpointa_mask_reg; } ;
struct mvumi_hba {struct mvumi_hw_regs* regs; } ;


 int DRBL_SOFT_RESET ;
 scalar_t__ HANDSHAKE_DONESTATE ;
 scalar_t__ ioread32 (int ) ;
 int iowrite32 (int ,int ) ;

__attribute__((used)) static void mvumi_reset(struct mvumi_hba *mhba)
{
 struct mvumi_hw_regs *regs = mhba->regs;

 iowrite32(0, regs->enpointa_mask_reg);
 if (ioread32(regs->arm_to_pciea_msg1) != HANDSHAKE_DONESTATE)
  return;

 iowrite32(DRBL_SOFT_RESET, regs->pciea_to_arm_drbl_reg);
}
