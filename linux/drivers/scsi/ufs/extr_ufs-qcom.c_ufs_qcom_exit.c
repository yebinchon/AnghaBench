
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int generic_phy; } ;
struct ufs_hba {int dummy; } ;


 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 int ufs_qcom_disable_lane_clks (struct ufs_qcom_host*) ;
 struct ufs_qcom_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static void ufs_qcom_exit(struct ufs_hba *hba)
{
 struct ufs_qcom_host *host = ufshcd_get_variant(hba);

 ufs_qcom_disable_lane_clks(host);
 phy_power_off(host->generic_phy);
 phy_exit(host->generic_phy);
}
