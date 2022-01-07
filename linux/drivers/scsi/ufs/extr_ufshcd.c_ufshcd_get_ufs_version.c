
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int quirks; } ;


 int REG_UFS_VERSION ;
 int UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_vops_get_ufs_hci_version (struct ufs_hba*) ;

__attribute__((used)) static inline u32 ufshcd_get_ufs_version(struct ufs_hba *hba)
{
 if (hba->quirks & UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION)
  return ufshcd_vops_get_ufs_hci_version(hba);

 return ufshcd_readl(hba, REG_UFS_VERSION);
}
