
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ufs_hba {scalar_t__ ahit; TYPE_1__* host; int dev; } ;
struct TYPE_2__ {int host_lock; } ;


 int REG_AUTO_HIBERNATE_IDLE_TIMER ;
 int pm_runtime_suspended (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_is_auto_hibern8_supported (struct ufs_hba*) ;
 int ufshcd_writel (struct ufs_hba*,scalar_t__,int ) ;

__attribute__((used)) static void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit)
{
 unsigned long flags;

 if (!ufshcd_is_auto_hibern8_supported(hba))
  return;

 spin_lock_irqsave(hba->host->host_lock, flags);
 if (hba->ahit == ahit)
  goto out_unlock;
 hba->ahit = ahit;
 if (!pm_runtime_suspended(hba->dev))
  ufshcd_writel(hba, hba->ahit, REG_AUTO_HIBERNATE_IDLE_TIMER);
out_unlock:
 spin_unlock_irqrestore(hba->host->host_lock, flags);
}
