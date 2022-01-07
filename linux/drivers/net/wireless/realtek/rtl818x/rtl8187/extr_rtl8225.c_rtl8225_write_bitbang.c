
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int RFPinsSelect; int RFPinsOutput; int RFPinsEnable; } ;


 int rtl818x_ioread16 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8187_priv*,int *,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtl8225_write_bitbang(struct ieee80211_hw *dev, u8 addr, u16 data)
{
 struct rtl8187_priv *priv = dev->priv;
 u16 reg80, reg84, reg82;
 u32 bangdata;
 int i;

 bangdata = (data << 4) | (addr & 0xf);

 reg80 = rtl818x_ioread16(priv, &priv->map->RFPinsOutput) & 0xfff3;
 reg82 = rtl818x_ioread16(priv, &priv->map->RFPinsEnable);

 rtl818x_iowrite16(priv, &priv->map->RFPinsEnable, reg82 | 0x7);

 reg84 = rtl818x_ioread16(priv, &priv->map->RFPinsSelect);
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, reg84 | 0x7);
 udelay(10);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 udelay(2);
 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80);
 udelay(10);

 for (i = 15; i >= 0; i--) {
  u16 reg = reg80 | (bangdata & (1 << i)) >> i;

  if (i & 1)
   rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg);

  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg | (1 << 1));
  rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg | (1 << 1));

  if (!(i & 1))
   rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg);
 }

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 udelay(10);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, reg84);
}
