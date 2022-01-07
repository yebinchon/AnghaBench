
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_suspended; } ;
struct ufs_hba {int devfreq; TYPE_2__* host; TYPE_1__ clk_scaling; } ;
struct TYPE_4__ {int host_lock; } ;


 int devfreq_resume_device (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_is_clkscaling_supported (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_resume_clkscaling(struct ufs_hba *hba)
{
 unsigned long flags;
 bool resume = 0;

 if (!ufshcd_is_clkscaling_supported(hba))
  return;

 spin_lock_irqsave(hba->host->host_lock, flags);
 if (hba->clk_scaling.is_suspended) {
  resume = 1;
  hba->clk_scaling.is_suspended = 0;
 }
 spin_unlock_irqrestore(hba->host->host_lock, flags);

 if (resume)
  devfreq_resume_device(hba->devfreq);
}
