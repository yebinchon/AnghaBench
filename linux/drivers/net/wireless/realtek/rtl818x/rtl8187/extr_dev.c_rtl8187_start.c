
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl8187_priv {int rx_conf; int conf_mutex; int work; TYPE_1__* map; int anchored; scalar_t__ is_rtl8187b; struct ieee80211_hw* dev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct TYPE_2__ {int CMD; int TX_CONF; int TX_AGC_CTL; int CW_CONF; int RX_CONF; int * MAR; int INT_MASK; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int RETRY_COUNT ;
 int RTL818X_CMD_RX_ENABLE ;
 int RTL818X_CMD_TX_ENABLE ;
 int RTL818X_CW_CONF_PERPACKET_CW ;
 int RTL818X_CW_CONF_PERPACKET_RETRY ;
 int RTL818X_RX_CONF_BROADCAST ;
 int RTL818X_RX_CONF_BSSID ;
 int RTL818X_RX_CONF_DATA ;
 int RTL818X_RX_CONF_MGMT ;
 int RTL818X_RX_CONF_NICMAC ;
 int RTL818X_RX_CONF_ONLYERLPKT ;
 int RTL818X_RX_CONF_RX_AUTORESETPHY ;
 int RTL818X_TX_AGC_CTL_FEEDBACK_ANT ;
 int RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL ;
 int RTL818X_TX_AGC_CTL_PERPACKET_GAIN ;
 int RTL818X_TX_CONF_CW_MIN ;
 int RTL818X_TX_CONF_DISREQQSIZE ;
 int RTL818X_TX_CONF_HW_SEQNUM ;
 int RTL818X_TX_CONF_NO_ICV ;
 int init_usb_anchor (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl8187_init_hw (struct ieee80211_hw*) ;
 int rtl8187_init_urbs (struct ieee80211_hw*) ;
 int rtl8187_work ;
 int rtl8187b_init_hw (struct ieee80211_hw*) ;
 int rtl8187b_init_status_urb (struct ieee80211_hw*) ;
 int rtl818x_ioread8 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8187_priv*,int *,int) ;
 int rtl818x_iowrite32 (struct rtl8187_priv*,int *,int) ;
 int rtl818x_iowrite8 (struct rtl8187_priv*,int *,int) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static int rtl8187_start(struct ieee80211_hw *dev)
{
 struct rtl8187_priv *priv = dev->priv;
 u32 reg;
 int ret;

 mutex_lock(&priv->conf_mutex);

 ret = (!priv->is_rtl8187b) ? rtl8187_init_hw(dev) :
         rtl8187b_init_hw(dev);
 if (ret)
  goto rtl8187_start_exit;

 init_usb_anchor(&priv->anchored);
 priv->dev = dev;

 if (priv->is_rtl8187b) {
  reg = RTL818X_RX_CONF_MGMT |
        RTL818X_RX_CONF_DATA |
        RTL818X_RX_CONF_BROADCAST |
        RTL818X_RX_CONF_NICMAC |
        RTL818X_RX_CONF_BSSID |
        (7 << 13 ) |
        (7 << 10 ) |
        RTL818X_RX_CONF_RX_AUTORESETPHY |
        RTL818X_RX_CONF_ONLYERLPKT;
  priv->rx_conf = reg;
  rtl818x_iowrite32(priv, &priv->map->RX_CONF, reg);

  reg = rtl818x_ioread8(priv, &priv->map->TX_AGC_CTL);
  reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_GAIN;
  reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL;
  reg &= ~RTL818X_TX_AGC_CTL_FEEDBACK_ANT;
  rtl818x_iowrite8(priv, &priv->map->TX_AGC_CTL, reg);

  rtl818x_iowrite32(priv, &priv->map->TX_CONF,
      RTL818X_TX_CONF_HW_SEQNUM |
      RTL818X_TX_CONF_DISREQQSIZE |
      (RETRY_COUNT << 8 ) |
      (RETRY_COUNT << 0 ) |
      (7 << 21 ));
  ret = rtl8187_init_urbs(dev);
  if (ret)
   goto rtl8187_start_exit;
  ret = rtl8187b_init_status_urb(dev);
  if (ret)
   usb_kill_anchored_urbs(&priv->anchored);
  goto rtl8187_start_exit;
 }

 rtl818x_iowrite16(priv, &priv->map->INT_MASK, 0xFFFF);

 rtl818x_iowrite32(priv, &priv->map->MAR[0], ~0);
 rtl818x_iowrite32(priv, &priv->map->MAR[1], ~0);

 ret = rtl8187_init_urbs(dev);
 if (ret)
  goto rtl8187_start_exit;

 reg = RTL818X_RX_CONF_ONLYERLPKT |
       RTL818X_RX_CONF_RX_AUTORESETPHY |
       RTL818X_RX_CONF_BSSID |
       RTL818X_RX_CONF_MGMT |
       RTL818X_RX_CONF_DATA |
       (7 << 13 ) |
       (7 << 10 ) |
       RTL818X_RX_CONF_BROADCAST |
       RTL818X_RX_CONF_NICMAC;

 priv->rx_conf = reg;
 rtl818x_iowrite32(priv, &priv->map->RX_CONF, reg);

 reg = rtl818x_ioread8(priv, &priv->map->CW_CONF);
 reg &= ~RTL818X_CW_CONF_PERPACKET_CW;
 reg |= RTL818X_CW_CONF_PERPACKET_RETRY;
 rtl818x_iowrite8(priv, &priv->map->CW_CONF, reg);

 reg = rtl818x_ioread8(priv, &priv->map->TX_AGC_CTL);
 reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_GAIN;
 reg &= ~RTL818X_TX_AGC_CTL_PERPACKET_ANTSEL;
 reg &= ~RTL818X_TX_AGC_CTL_FEEDBACK_ANT;
 rtl818x_iowrite8(priv, &priv->map->TX_AGC_CTL, reg);

 reg = RTL818X_TX_CONF_CW_MIN |
        (7 << 21 ) |
        RTL818X_TX_CONF_NO_ICV;
 rtl818x_iowrite32(priv, &priv->map->TX_CONF, reg);

 reg = rtl818x_ioread8(priv, &priv->map->CMD);
 reg |= RTL818X_CMD_TX_ENABLE;
 reg |= RTL818X_CMD_RX_ENABLE;
 rtl818x_iowrite8(priv, &priv->map->CMD, reg);
 INIT_DELAYED_WORK(&priv->work, rtl8187_work);

rtl8187_start_exit:
 mutex_unlock(&priv->conf_mutex);
 return ret;
}
