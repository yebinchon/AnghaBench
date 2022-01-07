
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct wiphy {int dummy; } ;
struct TYPE_4__ {size_t numpmkid; TYPE_1__* pmkidlist; } ;
struct wilc_priv {TYPE_2__ pmkid_list; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct net_device {int dummy; } ;
struct cfg80211_pmksa {int pmkid; int bssid; } ;
struct TYPE_3__ {int pmkid; int bssid; } ;


 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ PMKID_FOUND ;
 size_t WILC_MAX_NUM_PMKIDS ;
 int WLAN_PMKID_LEN ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_set_pmkid_info (struct wilc_vif*,TYPE_2__*) ;

__attribute__((used)) static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
       struct cfg80211_pmksa *pmksa)
{
 struct wilc_vif *vif = netdev_priv(netdev);
 struct wilc_priv *priv = &vif->priv;
 u32 i;
 int ret = 0;
 u8 flag = 0;

 for (i = 0; i < priv->pmkid_list.numpmkid; i++) {
  if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
       ETH_ALEN)) {
   flag = PMKID_FOUND;
   break;
  }
 }
 if (i < WILC_MAX_NUM_PMKIDS) {
  memcpy(priv->pmkid_list.pmkidlist[i].bssid, pmksa->bssid,
         ETH_ALEN);
  memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
         WLAN_PMKID_LEN);
  if (!(flag == PMKID_FOUND))
   priv->pmkid_list.numpmkid++;
 } else {
  netdev_err(netdev, "Invalid PMKID index\n");
  ret = -EINVAL;
 }

 if (!ret)
  ret = wilc_set_pmkid_info(vif, &priv->pmkid_list);

 return ret;
}
