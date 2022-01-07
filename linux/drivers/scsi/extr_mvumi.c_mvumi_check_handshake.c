
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvumi_hba {unsigned int fw_state; TYPE_2__* pdev; TYPE_1__* regs; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int arm_to_pciea_msg1; int pciea_to_arm_drbl_reg; } ;


 int DRBL_MU_RESET ;
 unsigned long FW_MAX_DELAY ;
 unsigned int FW_STATE_STARTED ;
 unsigned int FW_STATE_STARTING ;
 unsigned int HANDSHAKE_DONESTATE ;
 unsigned int HANDSHAKE_READYSTATE ;
 unsigned long HZ ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,unsigned int) ;
 unsigned int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 unsigned long jiffies ;
 scalar_t__ mvumi_handshake_event (struct mvumi_hba*) ;
 int rmb () ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static unsigned char mvumi_check_handshake(struct mvumi_hba *mhba)
{
 unsigned int tmp;
 unsigned long before;

 before = jiffies;
 tmp = ioread32(mhba->regs->arm_to_pciea_msg1);
 while ((tmp != HANDSHAKE_READYSTATE) && (tmp != HANDSHAKE_DONESTATE)) {
  if (tmp != HANDSHAKE_READYSTATE)
   iowrite32(DRBL_MU_RESET,
     mhba->regs->pciea_to_arm_drbl_reg);
  if (time_after(jiffies, before + FW_MAX_DELAY * HZ)) {
   dev_err(&mhba->pdev->dev,
    "invalid signature [0x%x].\n", tmp);
   return -1;
  }
  usleep_range(1000, 2000);
  rmb();
  tmp = ioread32(mhba->regs->arm_to_pciea_msg1);
 }

 mhba->fw_state = FW_STATE_STARTING;
 dev_dbg(&mhba->pdev->dev, "start firmware handshake...\n");
 do {
  if (mvumi_handshake_event(mhba)) {
   dev_err(&mhba->pdev->dev,
     "handshake failed at state 0x%x.\n",
      mhba->fw_state);
   return -1;
  }
 } while (mhba->fw_state != FW_STATE_STARTED);

 dev_dbg(&mhba->pdev->dev, "firmware handshake done\n");

 return 0;
}
