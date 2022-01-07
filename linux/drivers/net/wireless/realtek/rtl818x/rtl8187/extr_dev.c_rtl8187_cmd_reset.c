
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8187_priv {TYPE_1__* map; } ;
struct ieee80211_hw {int wiphy; struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int EEPROM_CMD; int CMD; } ;


 int ETIMEDOUT ;
 int RTL818X_CMD_RESET ;
 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_LOAD ;
 int msleep (int) ;
 int rtl818x_ioread8 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static int rtl8187_cmd_reset(struct ieee80211_hw *dev)
{
 struct rtl8187_priv *priv = dev->priv;
 u8 reg;
 int i;

 reg = rtl818x_ioread8(priv, &priv->map->CMD);
 reg &= (1 << 1);
 reg |= RTL818X_CMD_RESET;
 rtl818x_iowrite8(priv, &priv->map->CMD, reg);

 i = 10;
 do {
  msleep(2);
  if (!(rtl818x_ioread8(priv, &priv->map->CMD) &
        RTL818X_CMD_RESET))
   break;
 } while (--i);

 if (!i) {
  wiphy_err(dev->wiphy, "Reset timeout!\n");
  return -ETIMEDOUT;
 }


 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_LOAD);

 i = 10;
 do {
  msleep(4);
  if (!(rtl818x_ioread8(priv, &priv->map->EEPROM_CMD) &
        RTL818X_EEPROM_CMD_CONFIG))
   break;
 } while (--i);

 if (!i) {
  wiphy_err(dev->wiphy, "eeprom reset timeout!\n");
  return -ETIMEDOUT;
 }

 return 0;
}
