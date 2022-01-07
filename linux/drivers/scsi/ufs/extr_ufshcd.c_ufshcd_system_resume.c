
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int is_sys_suspended; int uic_link_state; int curr_dev_pwr_mode; int dev; int is_powered; } ;
typedef int ktime_t ;


 int EINVAL ;
 int UFS_SYSTEM_PM ;
 int dev_name (int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 scalar_t__ pm_runtime_suspended (int ) ;
 int trace_ufshcd_system_resume (int ,int,int ,int ,int ) ;
 int ufshcd_resume (struct ufs_hba*,int ) ;

int ufshcd_system_resume(struct ufs_hba *hba)
{
 int ret = 0;
 ktime_t start = ktime_get();

 if (!hba)
  return -EINVAL;

 if (!hba->is_powered || pm_runtime_suspended(hba->dev))




  goto out;
 else
  ret = ufshcd_resume(hba, UFS_SYSTEM_PM);
out:
 trace_ufshcd_system_resume(dev_name(hba->dev), ret,
  ktime_to_us(ktime_sub(ktime_get(), start)),
  hba->curr_dev_pwr_mode, hba->uic_link_state);
 if (!ret)
  hba->is_sys_suspended = 0;
 return ret;
}
