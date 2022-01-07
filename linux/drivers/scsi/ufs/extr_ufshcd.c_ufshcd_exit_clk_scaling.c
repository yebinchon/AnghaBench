
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int workq; } ;
struct ufs_hba {TYPE_1__ clk_scaling; } ;


 int destroy_workqueue (int ) ;
 int ufshcd_devfreq_remove (struct ufs_hba*) ;
 int ufshcd_is_clkscaling_supported (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_exit_clk_scaling(struct ufs_hba *hba)
{
 if (!ufshcd_is_clkscaling_supported(hba))
  return;

 destroy_workqueue(hba->clk_scaling.workq);
 ufshcd_devfreq_remove(hba);
}
