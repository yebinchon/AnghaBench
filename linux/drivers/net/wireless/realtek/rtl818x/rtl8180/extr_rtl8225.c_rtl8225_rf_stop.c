
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int EEPROM_CMD; int CONFIG3; int ANAPARAM; int ANAPARAM2; } ;


 int RTL818X_CONFIG3_ANAPARAM_WRITE ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int RTL8225_ANAPARAM2_OFF ;
 int RTL8225_ANAPARAM_OFF ;
 int msleep (int) ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,int ) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;
 int rtl8225_write (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void rtl8225_rf_stop(struct ieee80211_hw *dev)
{
 struct rtl8180_priv *priv = dev->priv;
 u8 reg;

 rtl8225_write(dev, 0x4, 0x1f); msleep(1);

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
 reg = rtl818x_ioread8(priv, &priv->map->CONFIG3);
 rtl818x_iowrite8(priv, &priv->map->CONFIG3, reg | RTL818X_CONFIG3_ANAPARAM_WRITE);
 rtl818x_iowrite32(priv, &priv->map->ANAPARAM2, RTL8225_ANAPARAM2_OFF);
 rtl818x_iowrite32(priv, &priv->map->ANAPARAM, RTL8225_ANAPARAM_OFF);
 rtl818x_iowrite8(priv, &priv->map->CONFIG3, reg & ~RTL818X_CONFIG3_ANAPARAM_WRITE);
 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);
}
