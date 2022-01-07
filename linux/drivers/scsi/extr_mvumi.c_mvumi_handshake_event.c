
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvumi_hba {scalar_t__ fw_state; int global_isr; TYPE_1__* pdev; TYPE_2__* instancet; } ;
struct TYPE_4__ {unsigned int (* read_fw_status_reg ) (struct mvumi_hba*) ;} ;
struct TYPE_3__ {int dev; } ;


 unsigned int DRBL_HANDSHAKE_ISR ;
 unsigned long FW_MAX_DELAY ;
 scalar_t__ FW_STATE_STARTED ;
 unsigned long HZ ;
 int dev_err (int *,char*,scalar_t__,...) ;
 unsigned long jiffies ;
 int mvumi_handshake (struct mvumi_hba*) ;
 int rmb () ;
 unsigned int stub1 (struct mvumi_hba*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static unsigned char mvumi_handshake_event(struct mvumi_hba *mhba)
{
 unsigned int isr_status;
 unsigned long before;

 before = jiffies;
 mvumi_handshake(mhba);
 do {
  isr_status = mhba->instancet->read_fw_status_reg(mhba);

  if (mhba->fw_state == FW_STATE_STARTED)
   return 0;
  if (time_after(jiffies, before + FW_MAX_DELAY * HZ)) {
   dev_err(&mhba->pdev->dev,
    "no handshake response at state 0x%x.\n",
      mhba->fw_state);
   dev_err(&mhba->pdev->dev,
    "isr : global=0x%x,status=0x%x.\n",
     mhba->global_isr, isr_status);
   return -1;
  }
  rmb();
  usleep_range(1000, 2000);
 } while (!(isr_status & DRBL_HANDSHAKE_ISR));

 return 0;
}
