
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct qtnf_wmac {int macid; } ;
struct qtnf_vif {int dummy; } ;


 int EFAULT ;
 int pr_err (char*,int ) ;
 int qtnf_cmd_send_update_phy_params (struct qtnf_wmac*,int ) ;
 struct qtnf_vif* qtnf_mac_get_base_vif (struct qtnf_wmac*) ;
 struct qtnf_wmac* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int qtnf_set_wiphy_params(struct wiphy *wiphy, u32 changed)
{
 struct qtnf_wmac *mac = wiphy_priv(wiphy);
 struct qtnf_vif *vif;
 int ret;

 vif = qtnf_mac_get_base_vif(mac);
 if (!vif) {
  pr_err("MAC%u: primary VIF is not configured\n", mac->macid);
  return -EFAULT;
 }

 ret = qtnf_cmd_send_update_phy_params(mac, changed);
 if (ret)
  pr_err("MAC%u: failed to update PHY params\n", mac->macid);

 return ret;
}
