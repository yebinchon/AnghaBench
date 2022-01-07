
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int dummy; } ;


 scalar_t__ UFS_UNIPRO_VER_1_6 ;
 scalar_t__ ufshcd_get_local_unipro_ver (struct ufs_hba*) ;

__attribute__((used)) static bool ufshcd_is_unipro_pa_params_tuning_req(struct ufs_hba *hba)
{
 if (ufshcd_get_local_unipro_ver(hba) < UFS_UNIPRO_VER_1_6)
  return 1;
 else
  return 0;
}
