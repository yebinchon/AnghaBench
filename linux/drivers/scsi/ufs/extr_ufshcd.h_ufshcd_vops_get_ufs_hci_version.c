
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ufs_hba {TYPE_1__* vops; } ;
struct TYPE_2__ {int (* get_ufs_hci_version ) (struct ufs_hba*) ;} ;


 int REG_UFS_VERSION ;
 int stub1 (struct ufs_hba*) ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline u32 ufshcd_vops_get_ufs_hci_version(struct ufs_hba *hba)
{
 if (hba->vops && hba->vops->get_ufs_hci_version)
  return hba->vops->get_ufs_hci_version(hba);

 return ufshcd_readl(hba, REG_UFS_VERSION);
}
