
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_host {int mphy; } ;
struct ufs_hba {int dummy; } ;
typedef enum ufs_notify_change_status { ____Placeholder_ufs_notify_change_status } ufs_notify_change_status ;


 int EINVAL ;


 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 struct ufs_mtk_host* ufshcd_get_variant (struct ufs_hba*) ;

__attribute__((used)) static int ufs_mtk_setup_clocks(struct ufs_hba *hba, bool on,
    enum ufs_notify_change_status status)
{
 struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 int ret = -EINVAL;






 if (!host)
  return 0;

 switch (status) {
 case 128:
  if (!on)
   ret = phy_power_off(host->mphy);
  break;
 case 129:
  if (on)
   ret = phy_power_on(host->mphy);
  break;
 }

 return ret;
}
