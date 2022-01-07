
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct TYPE_2__ {int EEPROM_CMD; int CONFIG3; int ANAPARAM3; } ;


 int RTL818X_CONFIG3_ANAPARAM_WRITE ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int ) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

__attribute__((used)) static void rtl8180_set_anaparam3(struct rtl8180_priv *priv, u16 anaparam3)
{
 u8 reg;

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD,
    RTL818X_EEPROM_CMD_CONFIG);

 reg = rtl818x_ioread8(priv, &priv->map->CONFIG3);
 rtl818x_iowrite8(priv, &priv->map->CONFIG3,
   reg | RTL818X_CONFIG3_ANAPARAM_WRITE);

 rtl818x_iowrite16(priv, &priv->map->ANAPARAM3, anaparam3);

 rtl818x_iowrite8(priv, &priv->map->CONFIG3,
   reg & ~RTL818X_CONFIG3_ANAPARAM_WRITE);

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD,
    RTL818X_EEPROM_CMD_NORMAL);
}
