
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int spm_lvl; int rpm_lvl; } ;


 int UFS_PM_LVL_1 ;
 int UFS_PM_LVL_3 ;

__attribute__((used)) static void ufs_hisi_set_pm_lvl(struct ufs_hba *hba)
{
 hba->rpm_lvl = UFS_PM_LVL_1;
 hba->spm_lvl = UFS_PM_LVL_3;
}
