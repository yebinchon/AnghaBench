
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8180_priv {scalar_t__ chip_family; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int INT_MASK; int IMR; } ;


 scalar_t__ RTL818X_CHIP_FAMILY_RTL8187SE ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int ) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,int ) ;

__attribute__((used)) static void rtl8180_int_disable(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE) {
  rtl818x_iowrite32(priv, &priv->map->IMR, 0);
 } else {
  rtl818x_iowrite16(priv, &priv->map->INT_MASK, 0);
 }
}
