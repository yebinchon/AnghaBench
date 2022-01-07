
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct rtl8180_priv {scalar_t__ chip_family; TYPE_1__* map; struct ieee80211_tx_queue_params* queue_param; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int cw_max; int cw_min; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int CW_VAL; } ;


 scalar_t__ RTL818X_CHIP_FAMILY_RTL8180 ;
 scalar_t__ RTL818X_CHIP_FAMILY_RTL8187SE ;
 int fls (int ) ;
 int rtl8187se_conf_ac_parm (struct ieee80211_hw*,size_t) ;
 int rtl818x_iowrite8 (struct rtl8180_priv*,int *,int) ;

__attribute__((used)) static int rtl8180_conf_tx(struct ieee80211_hw *dev,
       struct ieee80211_vif *vif, u16 queue,
       const struct ieee80211_tx_queue_params *params)
{
 struct rtl8180_priv *priv = dev->priv;
 u8 cw_min, cw_max;


 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8180)
  return 0;

 cw_min = fls(params->cw_min);
 cw_max = fls(params->cw_max);

 if (priv->chip_family == RTL818X_CHIP_FAMILY_RTL8187SE) {
  priv->queue_param[queue] = *params;
  rtl8187se_conf_ac_parm(dev, queue);
 } else
  rtl818x_iowrite8(priv, &priv->map->CW_VAL,
     (cw_max << 4) | cw_min);
 return 0;
}
