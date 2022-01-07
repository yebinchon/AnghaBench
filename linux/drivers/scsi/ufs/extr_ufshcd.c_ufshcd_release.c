
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hba {TYPE_1__* host; } ;
struct TYPE_2__ {int host_lock; } ;


 int __ufshcd_release (struct ufs_hba*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ufshcd_release(struct ufs_hba *hba)
{
 unsigned long flags;

 spin_lock_irqsave(hba->host->host_lock, flags);
 __ufshcd_release(hba);
 spin_unlock_irqrestore(hba->host->host_lock, flags);
}
