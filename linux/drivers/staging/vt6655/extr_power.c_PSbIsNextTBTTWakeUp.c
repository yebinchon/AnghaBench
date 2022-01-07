
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int wake_up_count; int PortOffset; struct ieee80211_hw* hw; } ;
struct ieee80211_conf {int listen_interval; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;


 int MAC_REG_PSCTL ;
 int MACvRegBitsOn (int ,int ,int ) ;
 int PSCTL_LNBCN ;

bool
PSbIsNextTBTTWakeUp(
 struct vnt_private *priv
)
{
 struct ieee80211_hw *hw = priv->hw;
 struct ieee80211_conf *conf = &hw->conf;
 bool wake_up = 0;

 if (conf->listen_interval > 1) {
  if (!priv->wake_up_count)
   priv->wake_up_count = conf->listen_interval;

  --priv->wake_up_count;

  if (priv->wake_up_count == 1) {

   MACvRegBitsOn(priv->PortOffset,
          MAC_REG_PSCTL, PSCTL_LNBCN);
   wake_up = 1;
  }
 }

 return wake_up;
}
