
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl8180_priv {scalar_t__ chip_family; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int FEMR; int CONFIG3; } ;


 int * FEMR_SE ;
 scalar_t__ RTL818X_CHIP_FAMILY_RTL8187SE ;
 int rtl818x_ioread16 (struct rtl8180_priv*,int *) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

__attribute__((used)) static void rtl8180_config_cardbus(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u16 reg16;
 u8 reg8;

 reg8 = rtl818x_ioread8(priv, &priv->map->CONFIG3);
 reg8 |= 1 << 1;
 rtl818x_iowrite8(priv, &priv->map->CONFIG3, reg8);

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE) {
  rtl818x_iowrite16(priv, FEMR_SE, 0xffff);
 } else {
  reg16 = rtl818x_ioread16(priv, &priv->map->FEMR);
  reg16 |= (1 << 15) | (1 << 14) | (1 << 4);
  rtl818x_iowrite16(priv, &priv->map->FEMR, reg16);
 }

}
