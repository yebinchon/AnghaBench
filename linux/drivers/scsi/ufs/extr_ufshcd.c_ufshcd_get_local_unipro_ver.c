
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {scalar_t__ ufs_version; } ;


 scalar_t__ UFSHCI_VERSION_10 ;
 scalar_t__ UFSHCI_VERSION_11 ;
 int UFS_UNIPRO_VER_1_41 ;
 int UFS_UNIPRO_VER_1_6 ;

u32 ufshcd_get_local_unipro_ver(struct ufs_hba *hba)
{

 if ((hba->ufs_version == UFSHCI_VERSION_10) ||
     (hba->ufs_version == UFSHCI_VERSION_11))
  return UFS_UNIPRO_VER_1_41;
 else
  return UFS_UNIPRO_VER_1_6;
}
