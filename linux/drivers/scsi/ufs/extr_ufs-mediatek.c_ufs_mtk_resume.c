
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_host {int mphy; } ;
struct ufs_hba {int dummy; } ;
typedef enum ufs_pm_op { ____Placeholder_ufs_pm_op } ufs_pm_op ;


 int phy_power_on (int ) ;
 struct ufs_mtk_host* ufshcd_get_variant (struct ufs_hba*) ;
 scalar_t__ ufshcd_is_link_hibern8 (struct ufs_hba*) ;

__attribute__((used)) static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
{
 struct ufs_mtk_host *host = ufshcd_get_variant(hba);

 if (ufshcd_is_link_hibern8(hba))
  phy_power_on(host->mphy);

 return 0;
}
