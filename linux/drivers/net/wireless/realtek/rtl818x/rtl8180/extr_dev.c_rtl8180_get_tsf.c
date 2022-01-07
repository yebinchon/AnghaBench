
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int * TSFT; } ;


 int rtl818x_ioread32 (struct rtl8180_priv*,int *) ;

__attribute__((used)) static u64 rtl8180_get_tsf(struct ieee80211_hw *dev,
      struct ieee80211_vif *vif)
{
 struct rtl8180_priv *priv = dev->priv;

 return rtl818x_ioread32(priv, &priv->map->TSFT[0]) |
        (u64)(rtl818x_ioread32(priv, &priv->map->TSFT[1])) << 32;
}
