
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl8187_priv {TYPE_1__* map; scalar_t__ is_rtl8187b; } ;
struct TYPE_2__ {int EEPROM_CMD; int CONFIG3; int ANAPARAM3A; int ANAPARAM2; int ANAPARAM; } ;


 int RTL8187B_RTL8225_ANAPARAM2_OFF ;
 int RTL8187B_RTL8225_ANAPARAM2_ON ;
 int RTL8187B_RTL8225_ANAPARAM3_OFF ;
 int RTL8187B_RTL8225_ANAPARAM3_ON ;
 int RTL8187B_RTL8225_ANAPARAM_OFF ;
 int RTL8187B_RTL8225_ANAPARAM_ON ;
 int RTL8187_RTL8225_ANAPARAM2_OFF ;
 int RTL8187_RTL8225_ANAPARAM2_ON ;
 int RTL8187_RTL8225_ANAPARAM_OFF ;
 int RTL8187_RTL8225_ANAPARAM_ON ;
 int RTL818X_CONFIG3_ANAPARAM_WRITE ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int rtl818x_ioread8 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite32 (struct rtl8187_priv*,int *,int ) ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int ) ;

__attribute__((used)) static void rtl8187_set_anaparam(struct rtl8187_priv *priv, bool rfon)
{
 u32 anaparam, anaparam2;
 u8 anaparam3, reg;

 if (!priv->is_rtl8187b) {
  if (rfon) {
   anaparam = RTL8187_RTL8225_ANAPARAM_ON;
   anaparam2 = RTL8187_RTL8225_ANAPARAM2_ON;
  } else {
   anaparam = RTL8187_RTL8225_ANAPARAM_OFF;
   anaparam2 = RTL8187_RTL8225_ANAPARAM2_OFF;
  }
 } else {
  if (rfon) {
   anaparam = RTL8187B_RTL8225_ANAPARAM_ON;
   anaparam2 = RTL8187B_RTL8225_ANAPARAM2_ON;
   anaparam3 = RTL8187B_RTL8225_ANAPARAM3_ON;
  } else {
   anaparam = RTL8187B_RTL8225_ANAPARAM_OFF;
   anaparam2 = RTL8187B_RTL8225_ANAPARAM2_OFF;
   anaparam3 = RTL8187B_RTL8225_ANAPARAM3_OFF;
  }
 }

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD,
    RTL818X_EEPROM_CMD_CONFIG);
 reg = rtl818x_ioread8(priv, &priv->map->CONFIG3);
 reg |= RTL818X_CONFIG3_ANAPARAM_WRITE;
 rtl818x_iowrite8(priv, &priv->map->CONFIG3, reg);
 rtl818x_iowrite32(priv, &priv->map->ANAPARAM, anaparam);
 rtl818x_iowrite32(priv, &priv->map->ANAPARAM2, anaparam2);
 if (priv->is_rtl8187b)
  rtl818x_iowrite8(priv, &priv->map->ANAPARAM3A, anaparam3);
 reg &= ~RTL818X_CONFIG3_ANAPARAM_WRITE;
 rtl818x_iowrite8(priv, &priv->map->CONFIG3, reg);
 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD,
    RTL818X_EEPROM_CMD_NORMAL);
}
