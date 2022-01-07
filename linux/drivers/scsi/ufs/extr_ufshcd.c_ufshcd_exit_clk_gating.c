
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk_gating_workq; int gate_work; int ungate_work; int enable_attr; int delay_attr; } ;
struct ufs_hba {TYPE_1__ clk_gating; int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int device_remove_file (int ,int *) ;
 int ufshcd_is_clkgating_allowed (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_exit_clk_gating(struct ufs_hba *hba)
{
 if (!ufshcd_is_clkgating_allowed(hba))
  return;
 device_remove_file(hba->dev, &hba->clk_gating.delay_attr);
 device_remove_file(hba->dev, &hba->clk_gating.enable_attr);
 cancel_work_sync(&hba->clk_gating.ungate_work);
 cancel_delayed_work_sync(&hba->clk_gating.gate_work);
 destroy_workqueue(hba->clk_gating.clk_gating_workq);
}
