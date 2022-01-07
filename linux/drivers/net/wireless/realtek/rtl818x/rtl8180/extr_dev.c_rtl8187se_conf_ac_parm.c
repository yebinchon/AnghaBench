
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct rtl8180_priv {int slot_time; TYPE_1__* map; struct ieee80211_tx_queue_params* queue_param; } ;
struct ieee80211_tx_queue_params {int aifs; size_t txop; int cw_max; int cw_min; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
struct TYPE_2__ {int AC_VO_PARAM; int AC_VI_PARAM; int AC_BE_PARAM; int AC_BK_PARAM; } ;


 size_t AC_PARAM_AIFS_SHIFT ;
 size_t AC_PARAM_ECW_MAX_SHIFT ;
 size_t AC_PARAM_ECW_MIN_SHIFT ;
 size_t AC_PARAM_TXOP_LIMIT_SHIFT ;




 size_t fls (int ) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,size_t) ;

__attribute__((used)) static void rtl8187se_conf_ac_parm(struct ieee80211_hw *dev, u8 queue)
{
 const struct ieee80211_tx_queue_params *params;
 struct rtl8180_priv *priv = dev->priv;


 u32 ac_param;

 u8 aifs;
 u8 txop;
 u8 cw_min, cw_max;

 params = &priv->queue_param[queue];

 cw_min = fls(params->cw_min);
 cw_max = fls(params->cw_max);

 aifs = 10 + params->aifs * priv->slot_time;


 txop = params->txop;

 ac_param = txop << AC_PARAM_TXOP_LIMIT_SHIFT |
  cw_max << AC_PARAM_ECW_MAX_SHIFT |
  cw_min << AC_PARAM_ECW_MIN_SHIFT |
  aifs << AC_PARAM_AIFS_SHIFT;

 switch (queue) {
 case 130:
  rtl818x_iowrite32(priv, &priv->map->AC_BK_PARAM, ac_param);
  break;
 case 131:
  rtl818x_iowrite32(priv, &priv->map->AC_BE_PARAM, ac_param);
  break;
 case 129:
  rtl818x_iowrite32(priv, &priv->map->AC_VI_PARAM, ac_param);
  break;
 case 128:
  rtl818x_iowrite32(priv, &priv->map->AC_VO_PARAM, ac_param);
  break;
 }
}
