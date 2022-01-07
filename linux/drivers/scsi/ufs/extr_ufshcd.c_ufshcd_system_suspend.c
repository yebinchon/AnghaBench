
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int is_sys_suspended; int uic_link_state; int curr_dev_pwr_mode; int dev; int spm_lvl; int is_powered; } ;
typedef int ktime_t ;


 int UFS_SYSTEM_PM ;
 int dev_name (int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 scalar_t__ pm_runtime_suspended (int ) ;
 int trace_ufshcd_system_suspend (int ,int,int ,int ,int ) ;
 int ufs_get_pm_lvl_to_dev_pwr_mode (int ) ;
 int ufs_get_pm_lvl_to_link_pwr_state (int ) ;
 int ufshcd_runtime_resume (struct ufs_hba*) ;
 int ufshcd_suspend (struct ufs_hba*,int ) ;

int ufshcd_system_suspend(struct ufs_hba *hba)
{
 int ret = 0;
 ktime_t start = ktime_get();

 if (!hba || !hba->is_powered)
  return 0;

 if ((ufs_get_pm_lvl_to_dev_pwr_mode(hba->spm_lvl) ==
      hba->curr_dev_pwr_mode) &&
     (ufs_get_pm_lvl_to_link_pwr_state(hba->spm_lvl) ==
      hba->uic_link_state))
  goto out;

 if (pm_runtime_suspended(hba->dev)) {
  ret = ufshcd_runtime_resume(hba);
  if (ret)
   goto out;
 }

 ret = ufshcd_suspend(hba, UFS_SYSTEM_PM);
out:
 trace_ufshcd_system_suspend(dev_name(hba->dev), ret,
  ktime_to_us(ktime_sub(ktime_get(), start)),
  hba->curr_dev_pwr_mode, hba->uic_link_state);
 if (!ret)
  hba->is_sys_suspended = 1;
 return ret;
}
