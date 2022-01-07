
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int uic_link_state; int curr_dev_pwr_mode; int dev; int is_powered; } ;
typedef int ktime_t ;


 int EINVAL ;
 int UFS_RUNTIME_PM ;
 int dev_name (int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_us (int ) ;
 int trace_ufshcd_runtime_suspend (int ,int,int ,int ,int ) ;
 int ufshcd_suspend (struct ufs_hba*,int ) ;

int ufshcd_runtime_suspend(struct ufs_hba *hba)
{
 int ret = 0;
 ktime_t start = ktime_get();

 if (!hba)
  return -EINVAL;

 if (!hba->is_powered)
  goto out;
 else
  ret = ufshcd_suspend(hba, UFS_RUNTIME_PM);
out:
 trace_ufshcd_runtime_suspend(dev_name(hba->dev), ret,
  ktime_to_us(ktime_sub(ktime_get(), start)),
  hba->curr_dev_pwr_mode, hba->uic_link_state);
 return ret;
}
