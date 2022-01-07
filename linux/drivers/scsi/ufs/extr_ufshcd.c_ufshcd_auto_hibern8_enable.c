
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* host; int ahit; } ;
struct TYPE_2__ {int host_lock; } ;


 int REG_AUTO_HIBERNATE_IDLE_TIMER ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_is_auto_hibern8_supported (struct ufs_hba*) ;
 int ufshcd_writel (struct ufs_hba*,int ,int ) ;

__attribute__((used)) static void ufshcd_auto_hibern8_enable(struct ufs_hba *hba)
{
 unsigned long flags;

 if (!ufshcd_is_auto_hibern8_supported(hba) || !hba->ahit)
  return;

 spin_lock_irqsave(hba->host->host_lock, flags);
 ufshcd_writel(hba, hba->ahit, REG_AUTO_HIBERNATE_IDLE_TIMER);
 spin_unlock_irqrestore(hba->host->host_lock, flags);
}
