
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl8180_priv {TYPE_1__* map; } ;
struct TYPE_2__ {int EEPROM_CMD; int CONFIG3; int ANAPARAM2; } ;


 int RTL818X_CONFIG3_ANAPARAM_WRITE ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int rtl818x_ioread8 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,int ) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

void rtl8180_set_anaparam2(struct rtl8180_priv *priv, u32 anaparam2)
{
 u8 reg;

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD,
    RTL818X_EEPROM_CMD_CONFIG);

 reg = rtl818x_ioread8(priv, &priv->map->CONFIG3);
 rtl818x_iowrite8(priv, &priv->map->CONFIG3,
   reg | RTL818X_CONFIG3_ANAPARAM_WRITE);

 rtl818x_iowrite32(priv, &priv->map->ANAPARAM2, anaparam2);

 rtl818x_iowrite8(priv, &priv->map->CONFIG3,
   reg & ~RTL818X_CONFIG3_ANAPARAM_WRITE);

 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD,
    RTL818X_EEPROM_CMD_NORMAL);
}
