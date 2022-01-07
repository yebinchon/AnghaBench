
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct uic_command {scalar_t__ argument3; int command; } ;
struct ufs_hba {int uic_cmd_mutex; TYPE_1__* host; struct completion* uic_async_done; int * active_uic_cmd; int dev; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int host_lock; } ;


 int ETIMEDOUT ;
 scalar_t__ PWR_LOCAL ;
 scalar_t__ PWR_OK ;
 int REG_INTERRUPT_ENABLE ;
 int UIC_CMD_TIMEOUT ;
 int UIC_COMMAND_COMPL ;
 int __ufshcd_send_uic_cmd (struct ufs_hba*,struct uic_command*,int) ;
 int dev_err (int ,char*,int ,scalar_t__,...) ;
 int init_completion (struct completion*) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_add_delay_before_dme_cmd (struct ufs_hba*) ;
 int ufshcd_disable_intr (struct ufs_hba*,int) ;
 int ufshcd_enable_intr (struct ufs_hba*,int) ;
 scalar_t__ ufshcd_get_upmcrs (struct ufs_hba*) ;
 int ufshcd_print_host_regs (struct ufs_hba*) ;
 int ufshcd_print_host_state (struct ufs_hba*) ;
 int ufshcd_print_pwr_info (struct ufs_hba*) ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int wait_for_completion_timeout (struct completion*,int ) ;
 int wmb () ;

__attribute__((used)) static int ufshcd_uic_pwr_ctrl(struct ufs_hba *hba, struct uic_command *cmd)
{
 struct completion uic_async_done;
 unsigned long flags;
 u8 status;
 int ret;
 bool reenable_intr = 0;

 mutex_lock(&hba->uic_cmd_mutex);
 init_completion(&uic_async_done);
 ufshcd_add_delay_before_dme_cmd(hba);

 spin_lock_irqsave(hba->host->host_lock, flags);
 hba->uic_async_done = &uic_async_done;
 if (ufshcd_readl(hba, REG_INTERRUPT_ENABLE) & UIC_COMMAND_COMPL) {
  ufshcd_disable_intr(hba, UIC_COMMAND_COMPL);




  wmb();
  reenable_intr = 1;
 }
 ret = __ufshcd_send_uic_cmd(hba, cmd, 0);
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 if (ret) {
  dev_err(hba->dev,
   "pwr ctrl cmd 0x%x with mode 0x%x uic error %d\n",
   cmd->command, cmd->argument3, ret);
  goto out;
 }

 if (!wait_for_completion_timeout(hba->uic_async_done,
      msecs_to_jiffies(UIC_CMD_TIMEOUT))) {
  dev_err(hba->dev,
   "pwr ctrl cmd 0x%x with mode 0x%x completion timeout\n",
   cmd->command, cmd->argument3);
  ret = -ETIMEDOUT;
  goto out;
 }

 status = ufshcd_get_upmcrs(hba);
 if (status != PWR_LOCAL) {
  dev_err(hba->dev,
   "pwr ctrl cmd 0x%x failed, host upmcrs:0x%x\n",
   cmd->command, status);
  ret = (status != PWR_OK) ? status : -1;
 }
out:
 if (ret) {
  ufshcd_print_host_state(hba);
  ufshcd_print_pwr_info(hba);
  ufshcd_print_host_regs(hba);
 }

 spin_lock_irqsave(hba->host->host_lock, flags);
 hba->active_uic_cmd = ((void*)0);
 hba->uic_async_done = ((void*)0);
 if (reenable_intr)
  ufshcd_enable_intr(hba, UIC_COMMAND_COMPL);
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 mutex_unlock(&hba->uic_cmd_mutex);

 return ret;
}
