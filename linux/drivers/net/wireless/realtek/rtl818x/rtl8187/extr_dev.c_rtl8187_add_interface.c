
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtl8187_vif {int enable_beacon; int beacon_work; struct ieee80211_hw* dev; } ;
struct rtl8187_priv {int conf_mutex; TYPE_1__* map; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; scalar_t__ addr; int drv_priv; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int EEPROM_CMD; int * MAC; } ;


 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int INIT_DELAYED_WORK (int *,int ) ;


 int RTL818X_EEPROM_CMD_CONFIG ;
 int RTL818X_EEPROM_CMD_NORMAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8187_beacon_work ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int ) ;

__attribute__((used)) static int rtl8187_add_interface(struct ieee80211_hw *dev,
     struct ieee80211_vif *vif)
{
 struct rtl8187_priv *priv = dev->priv;
 struct rtl8187_vif *vif_priv;
 int i;
 int ret = -EOPNOTSUPP;

 mutex_lock(&priv->conf_mutex);
 if (priv->vif)
  goto exit;

 switch (vif->type) {
 case 128:
 case 129:
  break;
 default:
  goto exit;
 }

 ret = 0;
 priv->vif = vif;


 vif_priv = (struct rtl8187_vif *)&vif->drv_priv;
 vif_priv->dev = dev;
 INIT_DELAYED_WORK(&vif_priv->beacon_work, rtl8187_beacon_work);
 vif_priv->enable_beacon = 0;


 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_CONFIG);
 for (i = 0; i < ETH_ALEN; i++)
  rtl818x_iowrite8(priv, &priv->map->MAC[i],
     ((u8 *)vif->addr)[i]);
 rtl818x_iowrite8(priv, &priv->map->EEPROM_CMD, RTL818X_EEPROM_CMD_NORMAL);

exit:
 mutex_unlock(&priv->conf_mutex);
 return ret;
}
