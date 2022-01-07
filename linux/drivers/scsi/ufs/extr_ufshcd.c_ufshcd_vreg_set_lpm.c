
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vccq2; int vccq; int vcc; } ;
struct TYPE_4__ {int is_lu_power_on_wp; } ;
struct ufs_hba {int dev_quirks; TYPE_1__ vreg_info; int dev; TYPE_2__ dev_info; } ;


 int UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM ;
 int ufshcd_config_vreg_lpm (struct ufs_hba*,int ) ;
 int ufshcd_is_link_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_off (struct ufs_hba*) ;
 int ufshcd_is_ufs_dev_active (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_ufs_dev_poweroff (struct ufs_hba*) ;
 int ufshcd_setup_vreg (struct ufs_hba*,int) ;
 int ufshcd_toggle_vreg (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
{






 if (!ufshcd_is_link_active(hba) &&
     hba->dev_quirks & UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM)
  usleep_range(2000, 2100);
 if (ufshcd_is_ufs_dev_poweroff(hba) && ufshcd_is_link_off(hba) &&
     !hba->dev_info.is_lu_power_on_wp) {
  ufshcd_setup_vreg(hba, 0);
 } else if (!ufshcd_is_ufs_dev_active(hba)) {
  ufshcd_toggle_vreg(hba->dev, hba->vreg_info.vcc, 0);
  if (!ufshcd_is_link_active(hba)) {
   ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq);
   ufshcd_config_vreg_lpm(hba, hba->vreg_info.vccq2);
  }
 }
}
