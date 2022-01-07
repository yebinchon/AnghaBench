
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int major; } ;
struct ufs_qcom_host {TYPE_1__ hw_ver; } ;
struct ufs_hba {int dummy; } ;


 int UFSHCI_VERSION_11 ;
 int UFSHCI_VERSION_20 ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static u32 ufs_qcom_get_ufs_hci_version(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);

 if (host->hw_ver.major == 0x1)
  return UFSHCI_VERSION_11;
 else
  return UFSHCI_VERSION_20;
}
