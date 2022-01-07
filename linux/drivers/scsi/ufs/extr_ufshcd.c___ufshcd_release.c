
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delay_ms; int gate_work; int clk_gating_workq; int state; scalar_t__ is_suspended; scalar_t__ active_reqs; } ;
struct ufs_hba {scalar_t__ ufshcd_state; TYPE_1__ clk_gating; int dev; scalar_t__ uic_async_done; scalar_t__ active_uic_cmd; scalar_t__ outstanding_tasks; scalar_t__ lrb_in_use; } ;


 int REQ_CLKS_OFF ;
 scalar_t__ UFSHCD_STATE_OPERATIONAL ;
 int dev_name (int ) ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int trace_ufshcd_clk_gating (int ,int ) ;
 scalar_t__ ufshcd_eh_in_progress (struct ufs_hba*) ;
 int ufshcd_is_clkgating_allowed (struct ufs_hba*) ;

__attribute__((used)) static void __ufshcd_release(struct ufs_hba *hba)
{
 if (!ufshcd_is_clkgating_allowed(hba))
  return;

 hba->clk_gating.active_reqs--;

 if (hba->clk_gating.active_reqs || hba->clk_gating.is_suspended
  || hba->ufshcd_state != UFSHCD_STATE_OPERATIONAL
  || hba->lrb_in_use || hba->outstanding_tasks
  || hba->active_uic_cmd || hba->uic_async_done
  || ufshcd_eh_in_progress(hba))
  return;

 hba->clk_gating.state = REQ_CLKS_OFF;
 trace_ufshcd_clk_gating(dev_name(hba->dev), hba->clk_gating.state);
 queue_delayed_work(hba->clk_gating.clk_gating_workq,
      &hba->clk_gating.gate_work,
      msecs_to_jiffies(hba->clk_gating.delay_ms));
}
