
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int resume_err; } ;
struct TYPE_5__ {scalar_t__ is_allowed; } ;
struct TYPE_4__ {int is_suspended; } ;
struct ufs_hba {int pm_op_in_progress; int uic_link_state; TYPE_3__ ufs_stats; TYPE_2__ clk_scaling; TYPE_1__ clk_gating; } ;
typedef enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;
typedef enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;


 int UFS_ACTIVE_PWR_MODE ;
 int ufshcd_auto_hibern8_enable (struct ufs_hba*) ;
 int ufshcd_disable_irq (struct ufs_hba*) ;
 int ufshcd_enable_auto_bkops (struct ufs_hba*) ;
 int ufshcd_enable_irq (struct ufs_hba*) ;
 int ufshcd_hba_vreg_set_hpm (struct ufs_hba*) ;
 int ufshcd_host_reset_and_restore (struct ufs_hba*) ;
 int ufshcd_is_link_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_hibern8 (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_off (struct ufs_hba*) ;
 int ufshcd_is_ufs_dev_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_keep_autobkops_enabled_except_suspend (struct ufs_hba*) ;
 int ufshcd_link_state_transition (struct ufs_hba*,int,int ) ;
 int ufshcd_release (struct ufs_hba*) ;
 int ufshcd_resume_clkscaling (struct ufs_hba*) ;
 int ufshcd_set_dev_pwr_mode (struct ufs_hba*,int ) ;
 int ufshcd_set_link_active (struct ufs_hba*) ;
 int ufshcd_setup_clocks (struct ufs_hba*,int) ;
 int ufshcd_suspend_clkscaling (struct ufs_hba*) ;
 int ufshcd_uic_hibern8_exit (struct ufs_hba*) ;
 int ufshcd_update_reg_hist (int *,int ) ;
 int ufshcd_urgent_bkops (struct ufs_hba*) ;
 int ufshcd_vops_resume (struct ufs_hba*,int) ;
 int ufshcd_vops_suspend (struct ufs_hba*,int) ;
 int ufshcd_vreg_set_hpm (struct ufs_hba*) ;
 int ufshcd_vreg_set_lpm (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
 int ret;
 enum uic_link_state old_link_state;

 hba->pm_op_in_progress = 1;
 old_link_state = hba->uic_link_state;

 ufshcd_hba_vreg_set_hpm(hba);

 ret = ufshcd_setup_clocks(hba, 1);
 if (ret)
  goto out;


 ret = ufshcd_enable_irq(hba);
 if (ret)
  goto disable_irq_and_vops_clks;

 ret = ufshcd_vreg_set_hpm(hba);
 if (ret)
  goto disable_irq_and_vops_clks;






 ret = ufshcd_vops_resume(hba, pm_op);
 if (ret)
  goto disable_vreg;

 if (ufshcd_is_link_hibern8(hba)) {
  ret = ufshcd_uic_hibern8_exit(hba);
  if (!ret)
   ufshcd_set_link_active(hba);
  else
   goto vendor_suspend;
 } else if (ufshcd_is_link_off(hba)) {
  ret = ufshcd_host_reset_and_restore(hba);




  if (ret || !ufshcd_is_link_active(hba))
   goto vendor_suspend;
 }

 if (!ufshcd_is_ufs_dev_active(hba)) {
  ret = ufshcd_set_dev_pwr_mode(hba, UFS_ACTIVE_PWR_MODE);
  if (ret)
   goto set_old_link_state;
 }

 if (ufshcd_keep_autobkops_enabled_except_suspend(hba))
  ufshcd_enable_auto_bkops(hba);
 else




  ufshcd_urgent_bkops(hba);

 hba->clk_gating.is_suspended = 0;

 if (hba->clk_scaling.is_allowed)
  ufshcd_resume_clkscaling(hba);


 ufshcd_release(hba);


 ufshcd_auto_hibern8_enable(hba);

 goto out;

set_old_link_state:
 ufshcd_link_state_transition(hba, old_link_state, 0);
vendor_suspend:
 ufshcd_vops_suspend(hba, pm_op);
disable_vreg:
 ufshcd_vreg_set_lpm(hba);
disable_irq_and_vops_clks:
 ufshcd_disable_irq(hba);
 if (hba->clk_scaling.is_allowed)
  ufshcd_suspend_clkscaling(hba);
 ufshcd_setup_clocks(hba, 0);
out:
 hba->pm_op_in_progress = 0;
 if (ret)
  ufshcd_update_reg_hist(&hba->ufs_stats.resume_err, (u32)ret);
 return ret;
}
