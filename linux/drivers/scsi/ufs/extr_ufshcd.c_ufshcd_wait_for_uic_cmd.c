
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uic_command {int argument2; int done; } ;
struct ufs_hba {TYPE_1__* host; int * active_uic_cmd; } ;
struct TYPE_2__ {int host_lock; } ;


 int ETIMEDOUT ;
 int MASK_UIC_COMMAND_RESULT ;
 int UIC_CMD_TIMEOUT ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int
ufshcd_wait_for_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd)
{
 int ret;
 unsigned long flags;

 if (wait_for_completion_timeout(&uic_cmd->done,
     msecs_to_jiffies(UIC_CMD_TIMEOUT)))
  ret = uic_cmd->argument2 & MASK_UIC_COMMAND_RESULT;
 else
  ret = -ETIMEDOUT;

 spin_lock_irqsave(hba->host->host_lock, flags);
 hba->active_uic_cmd = ((void*)0);
 spin_unlock_irqrestore(hba->host->host_lock, flags);

 return ret;
}
