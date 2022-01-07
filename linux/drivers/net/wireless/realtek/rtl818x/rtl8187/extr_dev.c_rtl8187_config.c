
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rtl8187_priv {int conf_mutex; TYPE_2__* map; TYPE_1__* rf; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct rtl8187_priv* priv; } ;
struct TYPE_4__ {int BEACON_INTERVAL_TIME; int BEACON_INTERVAL; int ATIMTR_INTERVAL; int ATIM_WND; int TX_CONF; } ;
struct TYPE_3__ {int (* set_chan ) (struct ieee80211_hw*,struct ieee80211_conf*) ;} ;


 int RTL818X_TX_CONF_LOOPBACK_MAC ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl818x_ioread32 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8187_priv*,int *,int) ;
 int rtl818x_iowrite32 (struct rtl8187_priv*,int *,int) ;
 int stub1 (struct ieee80211_hw*,struct ieee80211_conf*) ;

__attribute__((used)) static int rtl8187_config(struct ieee80211_hw *dev, u32 changed)
{
 struct rtl8187_priv *priv = dev->priv;
 struct ieee80211_conf *conf = &dev->conf;
 u32 reg;

 mutex_lock(&priv->conf_mutex);
 reg = rtl818x_ioread32(priv, &priv->map->TX_CONF);




 rtl818x_iowrite32(priv, &priv->map->TX_CONF,
     reg | RTL818X_TX_CONF_LOOPBACK_MAC);
 priv->rf->set_chan(dev, conf);
 msleep(10);
 rtl818x_iowrite32(priv, &priv->map->TX_CONF, reg);

 rtl818x_iowrite16(priv, &priv->map->ATIM_WND, 2);
 rtl818x_iowrite16(priv, &priv->map->ATIMTR_INTERVAL, 100);
 rtl818x_iowrite16(priv, &priv->map->BEACON_INTERVAL, 100);
 rtl818x_iowrite16(priv, &priv->map->BEACON_INTERVAL_TIME, 100);
 mutex_unlock(&priv->conf_mutex);
 return 0;
}
