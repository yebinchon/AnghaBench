
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int hw; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct sk_buff* ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 scalar_t__ vnt_beacon_xmit (struct vnt_private*,struct sk_buff*) ;

int vnt_beacon_make(struct vnt_private *priv, struct ieee80211_vif *vif)
{
 struct sk_buff *beacon;

 beacon = ieee80211_beacon_get(priv->hw, vif);
 if (!beacon)
  return -ENOMEM;

 if (vnt_beacon_xmit(priv, beacon)) {
  ieee80211_free_txskb(priv->hw, beacon);
  return -ENODEV;
 }

 return 0;
}
