
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int suspend_err; } ;
struct TYPE_5__ {int is_suspended; int state; } ;
struct TYPE_4__ {scalar_t__ is_allowed; int resume_work; int suspend_work; } ;
struct ufs_hba {int pm_op_in_progress; int rpm_lvl; int spm_lvl; int curr_dev_pwr_mode; int uic_link_state; TYPE_3__ ufs_stats; TYPE_2__ clk_gating; TYPE_1__ clk_scaling; int dev; int auto_bkops_enabled; } ;
typedef enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;
typedef enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;
typedef enum ufs_pm_level { ____Placeholder_ufs_pm_level } ufs_pm_level ;
typedef enum ufs_dev_pwr_mode { ____Placeholder_ufs_dev_pwr_mode } ufs_dev_pwr_mode ;


 int CLKS_OFF ;
 int EINVAL ;
 int UFS_ACTIVE_PWR_MODE ;
 int UFS_POWERDOWN_PWR_MODE ;
 int UIC_LINK_ACTIVE_STATE ;
 int UIC_LINK_OFF_STATE ;
 int __ufshcd_setup_clocks (struct ufs_hba*,int,int) ;
 int cancel_work_sync (int *) ;
 int dev_name (int ) ;
 int trace_ufshcd_clk_gating (int ,int ) ;
 int ufs_get_pm_lvl_to_dev_pwr_mode (int) ;
 int ufs_get_pm_lvl_to_link_pwr_state (int) ;
 scalar_t__ ufshcd_can_autobkops_during_suspend (struct ufs_hba*) ;
 int ufshcd_disable_auto_bkops (struct ufs_hba*) ;
 int ufshcd_disable_irq (struct ufs_hba*) ;
 int ufshcd_hba_vreg_set_lpm (struct ufs_hba*) ;
 int ufshcd_hold (struct ufs_hba*,int) ;
 int ufshcd_host_reset_and_restore (struct ufs_hba*) ;
 int ufshcd_is_link_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_hibern8 (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_off (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_runtime_pm (int) ;
 int ufshcd_is_shutdown_pm (int) ;
 int ufshcd_is_ufs_dev_active (struct ufs_hba*) ;
 int ufshcd_link_state_transition (struct ufs_hba*,int,int) ;
 int ufshcd_release (struct ufs_hba*) ;
 int ufshcd_resume_clkscaling (struct ufs_hba*) ;
 int ufshcd_set_dev_pwr_mode (struct ufs_hba*,int) ;
 int ufshcd_set_link_active (struct ufs_hba*) ;
 int ufshcd_setup_clocks (struct ufs_hba*,int) ;
 int ufshcd_suspend_clkscaling (struct ufs_hba*) ;
 int ufshcd_uic_hibern8_exit (struct ufs_hba*) ;
 int ufshcd_update_reg_hist (int *,int ) ;
 int ufshcd_urgent_bkops (struct ufs_hba*) ;
 int ufshcd_vops_suspend (struct ufs_hba*,int) ;
 int ufshcd_vreg_set_hpm (struct ufs_hba*) ;
 int ufshcd_vreg_set_lpm (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
 int ret = 0;
 enum ufs_pm_level pm_lvl;
 enum ufs_dev_pwr_mode req_dev_pwr_mode;
 enum uic_link_state req_link_state;

 hba->pm_op_in_progress = 1;
 if (!ufshcd_is_shutdown_pm(pm_op)) {
  pm_lvl = ufshcd_is_runtime_pm(pm_op) ?
    hba->rpm_lvl : hba->spm_lvl;
  req_dev_pwr_mode = ufs_get_pm_lvl_to_dev_pwr_mode(pm_lvl);
  req_link_state = ufs_get_pm_lvl_to_link_pwr_state(pm_lvl);
 } else {
  req_dev_pwr_mode = UFS_POWERDOWN_PWR_MODE;
  req_link_state = UIC_LINK_OFF_STATE;
 }





 ufshcd_hold(hba, 0);
 hba->clk_gating.is_suspended = 1;

 if (hba->clk_scaling.is_allowed) {
  cancel_work_sync(&hba->clk_scaling.suspend_work);
  cancel_work_sync(&hba->clk_scaling.resume_work);
  ufshcd_suspend_clkscaling(hba);
 }

 if (req_dev_pwr_mode == UFS_ACTIVE_PWR_MODE &&
   req_link_state == UIC_LINK_ACTIVE_STATE) {
  goto disable_clks;
 }

 if ((req_dev_pwr_mode == hba->curr_dev_pwr_mode) &&
     (req_link_state == hba->uic_link_state))
  goto enable_gating;


 if (!ufshcd_is_ufs_dev_active(hba) || !ufshcd_is_link_active(hba)) {
  ret = -EINVAL;
  goto enable_gating;
 }

 if (ufshcd_is_runtime_pm(pm_op)) {
  if (ufshcd_can_autobkops_during_suspend(hba)) {





   ret = ufshcd_urgent_bkops(hba);
   if (ret)
    goto enable_gating;
  } else {

   ufshcd_disable_auto_bkops(hba);
  }
 }

 if ((req_dev_pwr_mode != hba->curr_dev_pwr_mode) &&
      ((ufshcd_is_runtime_pm(pm_op) && !hba->auto_bkops_enabled) ||
        !ufshcd_is_runtime_pm(pm_op))) {

  ufshcd_disable_auto_bkops(hba);
  ret = ufshcd_set_dev_pwr_mode(hba, req_dev_pwr_mode);
  if (ret)
   goto enable_gating;
 }

 ret = ufshcd_link_state_transition(hba, req_link_state, 1);
 if (ret)
  goto set_dev_active;

 ufshcd_vreg_set_lpm(hba);

disable_clks:





 ret = ufshcd_vops_suspend(hba, pm_op);
 if (ret)
  goto set_link_active;

 if (!ufshcd_is_link_active(hba))
  ufshcd_setup_clocks(hba, 0);
 else

  __ufshcd_setup_clocks(hba, 0, 1);

 hba->clk_gating.state = CLKS_OFF;
 trace_ufshcd_clk_gating(dev_name(hba->dev), hba->clk_gating.state);




 ufshcd_disable_irq(hba);

 ufshcd_hba_vreg_set_lpm(hba);
 goto out;

set_link_active:
 if (hba->clk_scaling.is_allowed)
  ufshcd_resume_clkscaling(hba);
 ufshcd_vreg_set_hpm(hba);
 if (ufshcd_is_link_hibern8(hba) && !ufshcd_uic_hibern8_exit(hba))
  ufshcd_set_link_active(hba);
 else if (ufshcd_is_link_off(hba))
  ufshcd_host_reset_and_restore(hba);
set_dev_active:
 if (!ufshcd_set_dev_pwr_mode(hba, UFS_ACTIVE_PWR_MODE))
  ufshcd_disable_auto_bkops(hba);
enable_gating:
 if (hba->clk_scaling.is_allowed)
  ufshcd_resume_clkscaling(hba);
 hba->clk_gating.is_suspended = 0;
 ufshcd_release(hba);
out:
 hba->pm_op_in_progress = 0;
 if (ret)
  ufshcd_update_reg_hist(&hba->ufs_stats.suspend_err, (u32)ret);
 return ret;
}
