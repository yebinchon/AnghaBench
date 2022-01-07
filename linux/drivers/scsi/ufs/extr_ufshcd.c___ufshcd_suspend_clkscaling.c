
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ window_start_t; } ;
struct ufs_hba {TYPE_2__* host; TYPE_1__ clk_scaling; int devfreq; } ;
struct TYPE_4__ {int host_lock; } ;


 int devfreq_suspend_device (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void __ufshcd_suspend_clkscaling(struct ufs_hba *hba)
{
 unsigned long flags;

 devfreq_suspend_device(hba->devfreq);
 spin_lock_irqsave(hba->host->host_lock, flags);
 hba->clk_scaling.window_start_t = 0;
 spin_unlock_irqrestore(hba->host->host_lock, flags);
}
