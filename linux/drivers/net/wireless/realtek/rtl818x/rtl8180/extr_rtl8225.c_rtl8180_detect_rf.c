
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rtl818x_rf_ops {int dummy; } ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int EEPROM_CMD; int RFPinsEnable; int RFPinsSelect; int RFPinsOutput; } ;


 int msleep (int) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int) ;
 struct rtl818x_rf_ops const rtl8225_ops ;
 int rtl8225_read (struct ieee80211_hw*,int) ;
 int rtl8225_write (struct ieee80211_hw*,int ,int) ;
 struct rtl818x_rf_ops const rtl8225z2_ops ;

const struct rtl818x_rf_ops * rtl8180_detect_rf(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u16 reg8, reg9;

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, 0x0480);
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, 0x0488);
 rtl818x_iowrite16(priv, &priv->map->RFPinsEnable, 0x1FFF);
 rtl818x_ioread8(priv, &priv->map->EEPROM_CMD);
 msleep(100);

 rtl8225_write(dev, 0, 0x1B7);

 reg8 = rtl8225_read(dev, 8);
 reg9 = rtl8225_read(dev, 9);

 rtl8225_write(dev, 0, 0x0B7);

 if (reg8 != 0x588 || reg9 != 0x700)
  return &rtl8225_ops;

 return &rtl8225z2_ops;
}
