
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mvumi_hw_regs {int arm_to_pciea_msg1; int pciea_to_arm_drbl_reg; int enpointa_mask_reg; } ;
struct mvumi_hba {TYPE_1__* pdev; struct mvumi_hw_regs* regs; } ;
struct TYPE_2__ {int dev; } ;


 int DRBL_MU_RESET ;
 int FAILED ;
 unsigned long FW_MAX_DELAY ;
 scalar_t__ HANDSHAKE_READYSTATE ;
 unsigned long HZ ;
 int SUCCESS ;
 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int rmb () ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int mvumi_wait_for_fw(struct mvumi_hba *mhba)
{
 struct mvumi_hw_regs *regs = mhba->regs;
 u32 tmp;
 unsigned long before;
 before = jiffies;

 iowrite32(0, regs->enpointa_mask_reg);
 tmp = ioread32(regs->arm_to_pciea_msg1);
 while (tmp != HANDSHAKE_READYSTATE) {
  iowrite32(DRBL_MU_RESET, regs->pciea_to_arm_drbl_reg);
  if (time_after(jiffies, before + FW_MAX_DELAY * HZ)) {
   dev_err(&mhba->pdev->dev,
    "FW reset failed [0x%x].\n", tmp);
   return FAILED;
  }

  msleep(500);
  rmb();
  tmp = ioread32(regs->arm_to_pciea_msg1);
 }

 return SUCCESS;
}
