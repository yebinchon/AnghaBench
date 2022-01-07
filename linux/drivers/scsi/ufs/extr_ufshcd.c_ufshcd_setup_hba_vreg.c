
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_vreg_info {int vdd_hba; } ;
struct ufs_hba {int dev; struct ufs_vreg_info vreg_info; } ;


 int ufshcd_toggle_vreg (int ,int ,int) ;

__attribute__((used)) static int ufshcd_setup_hba_vreg(struct ufs_hba *hba, bool on)
{
 struct ufs_vreg_info *info = &hba->vreg_info;

 return ufshcd_toggle_vreg(hba->dev, info->vdd_hba, on);
}
