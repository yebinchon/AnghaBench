
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; int minor; int step; } ;
struct ufs_qcom_host {TYPE_1__ hw_ver; } ;
struct ufs_hba {int quirks; } ;


 int UFSHCD_QUIRK_BROKEN_INTR_AGGR ;
 int UFSHCD_QUIRK_BROKEN_LCC ;
 int UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP ;
 int UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION ;
 int UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS ;
 int UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE ;
 int ufs_qcom_cap_qunipro (struct ufs_qcom_host*) ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static void ufs_qcom_advertise_quirks(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);

 if (host->hw_ver.major == 0x01) {
  hba->quirks |= UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS
       | UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP
       | UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE;

  if (host->hw_ver.minor == 0x0001 && host->hw_ver.step == 0x0001)
   hba->quirks |= UFSHCD_QUIRK_BROKEN_INTR_AGGR;

  hba->quirks |= UFSHCD_QUIRK_BROKEN_LCC;
 }

 if (host->hw_ver.major == 0x2) {
  hba->quirks |= UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION;

  if (!ufs_qcom_cap_qunipro(host))

   hba->quirks |= (UFSHCD_QUIRK_DELAY_BEFORE_DME_CMDS
    | UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE
    | UFSHCD_QUIRK_BROKEN_PA_RXHSUNTERMCAP);
 }
}
