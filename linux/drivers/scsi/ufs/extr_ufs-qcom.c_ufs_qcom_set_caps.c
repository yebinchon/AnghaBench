
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int major; } ;
struct ufs_qcom_host {int caps; TYPE_1__ hw_ver; } ;
struct ufs_hba {int caps; } ;


 int UFSHCD_CAP_AUTO_BKOPS_SUSPEND ;
 int UFSHCD_CAP_CLK_GATING ;
 int UFSHCD_CAP_CLK_SCALING ;
 int UFSHCD_CAP_HIBERN8_WITH_CLK_GATING ;
 int UFS_QCOM_CAP_QUNIPRO ;
 int UFS_QCOM_CAP_RETAIN_SEC_CFG_AFTER_PWR_COLLAPSE ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static void ufs_qcom_set_caps(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);

 hba->caps |= UFSHCD_CAP_CLK_GATING | UFSHCD_CAP_HIBERN8_WITH_CLK_GATING;
 hba->caps |= UFSHCD_CAP_CLK_SCALING;
 hba->caps |= UFSHCD_CAP_AUTO_BKOPS_SUSPEND;

 if (host->hw_ver.major >= 0x2) {
  host->caps = UFS_QCOM_CAP_QUNIPRO |
        UFS_QCOM_CAP_RETAIN_SEC_CFG_AFTER_PWR_COLLAPSE;
 }
}
