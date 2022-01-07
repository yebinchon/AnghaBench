
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int driver_flags; int type; int addr; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {scalar_t__ mode; int conf_mutex; int mac_addr; struct ieee80211_vif* vif; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int IEEE80211_VIF_BEACON_FILTER ;
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ;
 int IEEE80211_VIF_SUPPORTS_UAPSD ;



 scalar_t__ NL80211_IFTYPE_MONITOR ;

 int cw1200_setup_mac (struct cw1200_common*) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cw1200_add_interface(struct ieee80211_hw *dev,
    struct ieee80211_vif *vif)
{
 int ret;
 struct cw1200_common *priv = dev->priv;


 vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
        IEEE80211_VIF_SUPPORTS_UAPSD |
        IEEE80211_VIF_SUPPORTS_CQM_RSSI;

 mutex_lock(&priv->conf_mutex);

 if (priv->mode != NL80211_IFTYPE_MONITOR) {
  mutex_unlock(&priv->conf_mutex);
  return -EOPNOTSUPP;
 }

 switch (vif->type) {
 case 128:
 case 131:
 case 129:
 case 130:
  priv->mode = vif->type;
  break;
 default:
  mutex_unlock(&priv->conf_mutex);
  return -EOPNOTSUPP;
 }

 priv->vif = vif;
 memcpy(priv->mac_addr, vif->addr, ETH_ALEN);
 ret = cw1200_setup_mac(priv);






 mutex_unlock(&priv->conf_mutex);
 return ret;
}
