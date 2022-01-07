
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int auto_bkops_enabled; int ee_ctrl_mask; } ;


 int MASK_EE_URGENT_BKOPS ;
 int ufshcd_disable_auto_bkops (struct ufs_hba*) ;
 int ufshcd_enable_auto_bkops (struct ufs_hba*) ;
 scalar_t__ ufshcd_keep_autobkops_enabled_except_suspend (struct ufs_hba*) ;

__attribute__((used)) static void ufshcd_force_reset_auto_bkops(struct ufs_hba *hba)
{
 if (ufshcd_keep_autobkops_enabled_except_suspend(hba)) {
  hba->auto_bkops_enabled = 0;
  hba->ee_ctrl_mask |= MASK_EE_URGENT_BKOPS;
  ufshcd_enable_auto_bkops(hba);
 } else {
  hba->auto_bkops_enabled = 1;
  hba->ee_ctrl_mask &= ~MASK_EE_URGENT_BKOPS;
  ufshcd_disable_auto_bkops(hba);
 }
}
