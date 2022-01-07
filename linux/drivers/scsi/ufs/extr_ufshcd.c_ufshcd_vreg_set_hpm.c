
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vcc; int vccq; int vccq2; } ;
struct TYPE_4__ {int is_lu_power_on_wp; } ;
struct ufs_hba {TYPE_1__ vreg_info; int dev; TYPE_2__ dev_info; } ;


 int ufshcd_config_vreg_hpm (struct ufs_hba*,int ) ;
 int ufshcd_config_vreg_lpm (struct ufs_hba*,int ) ;
 int ufshcd_is_link_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_off (struct ufs_hba*) ;
 int ufshcd_is_ufs_dev_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_ufs_dev_poweroff (struct ufs_hba*) ;
 int ufshcd_setup_vreg (struct ufs_hba*,int) ;
 int ufshcd_toggle_vreg (int ,int ,int) ;

__attribute__((used)) static int ufshcd_vreg_set_hpm(struct ufs_hba *hba)
{
 int ret = 0;

 if (ufshcd_is_ufs_dev_poweroff(hba) && ufshcd_is_link_off(hba) &&
     !hba->dev_info.is_lu_power_on_wp) {
  ret = ufshcd_setup_vreg(hba, 1);
 } else if (!ufshcd_is_ufs_dev_active(hba)) {
  if (!ret && !ufshcd_is_link_active(hba)) {
   ret = ufshcd_config_vreg_hpm(hba, hba->vreg_info.vccq);
   if (ret)
    goto vcc_disable;
   ret = ufshcd_config_vreg_hpm(hba, hba->vreg_info.vccq2);
   if (ret)
    goto vccq_lpm;
  }
  ret = ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, 1);
 }
 goto out;

vccq_lpm:
 ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
vcc_disable:
 ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, 0);
out:
 return ret;
}
