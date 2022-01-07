
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct wiphy {int dummy; } ;
struct TYPE_3__ {size_t numpmkid; TYPE_2__* pmkidlist; } ;
struct wilc_priv {TYPE_1__ pmkid_list; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct wilc_pmkid {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_pmksa {int bssid; } ;
struct TYPE_4__ {int pmkid; int bssid; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int WLAN_PMKID_LEN ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
       struct cfg80211_pmksa *pmksa)
{
 u32 i;
 int ret = 0;
 struct wilc_vif *vif = netdev_priv(netdev);
 struct wilc_priv *priv = &vif->priv;

 for (i = 0; i < priv->pmkid_list.numpmkid; i++) {
  if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
       ETH_ALEN)) {
   memset(&priv->pmkid_list.pmkidlist[i], 0,
          sizeof(struct wilc_pmkid));
   break;
  }
 }

 if (i < priv->pmkid_list.numpmkid && priv->pmkid_list.numpmkid > 0) {
  for (; i < (priv->pmkid_list.numpmkid - 1); i++) {
   memcpy(priv->pmkid_list.pmkidlist[i].bssid,
          priv->pmkid_list.pmkidlist[i + 1].bssid,
          ETH_ALEN);
   memcpy(priv->pmkid_list.pmkidlist[i].pmkid,
          priv->pmkid_list.pmkidlist[i + 1].pmkid,
          WLAN_PMKID_LEN);
  }
  priv->pmkid_list.numpmkid--;
 } else {
  ret = -EINVAL;
 }

 return ret;
}
