
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uic_command {int dummy; } ;
struct ufs_hba {int uic_cmd_mutex; TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int __ufshcd_send_uic_cmd (struct ufs_hba*,struct uic_command*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_add_delay_before_dme_cmd (struct ufs_hba*) ;
 int ufshcd_hold (struct ufs_hba*,int) ;
 int ufshcd_release (struct ufs_hba*) ;
 int ufshcd_wait_for_uic_cmd (struct ufs_hba*,struct uic_command*) ;

int ufshcd_send_uic_cmd(struct ufs_hba *hba, struct uic_command *uic_cmd)
{
 int ret;
 unsigned long flags;

 ufshcd_hold(hba, 0);
 mutex_lock(&hba->uic_cmd_mutex);
 ufshcd_add_delay_before_dme_cmd(hba);

 spin_lock_irqsave(hba->host->host_lock, flags);
 ret = __ufshcd_send_uic_cmd(hba, uic_cmd, 1);
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 if (!ret)
  ret = ufshcd_wait_for_uic_cmd(hba, uic_cmd);

 mutex_unlock(&hba->uic_cmd_mutex);

 ufshcd_release(hba);
 return ret;
}
