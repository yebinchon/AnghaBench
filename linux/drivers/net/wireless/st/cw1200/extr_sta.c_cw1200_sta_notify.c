
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int drv_priv; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_sta_priv {int link_id; } ;
struct cw1200_common {int ps_state_lock; } ;
typedef enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;


 int __cw1200_sta_notify (struct ieee80211_hw*,struct ieee80211_vif*,int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void cw1200_sta_notify(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif,
         enum sta_notify_cmd notify_cmd,
         struct ieee80211_sta *sta)
{
 struct cw1200_common *priv = dev->priv;
 struct cw1200_sta_priv *sta_priv =
  (struct cw1200_sta_priv *)&sta->drv_priv;

 spin_lock_bh(&priv->ps_state_lock);
 __cw1200_sta_notify(dev, vif, notify_cmd, sta_priv->link_id);
 spin_unlock_bh(&priv->ps_state_lock);
}
