
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {int mode; int enable_beacon; } ;




 int __cw1200_flush (struct cw1200_common*,int) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

void cw1200_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
    u32 queues, bool drop)
{
 struct cw1200_common *priv = hw->priv;

 switch (priv->mode) {
 case 128:
  drop = 1;
  break;
 case 129:
  if (!priv->enable_beacon)
   drop = 1;
  break;
 }

 if (!__cw1200_flush(priv, drop))
  wsm_unlock_tx(priv);

 return;
}
