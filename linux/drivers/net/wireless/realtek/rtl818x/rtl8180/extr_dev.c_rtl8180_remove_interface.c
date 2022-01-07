
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8180_priv {int * vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;



__attribute__((used)) static void rtl8180_remove_interface(struct ieee80211_hw *dev,
         struct ieee80211_vif *vif)
{
 struct rtl8180_priv *priv = dev->priv;
 priv->vif = ((void*)0);
}
