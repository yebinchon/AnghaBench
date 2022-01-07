
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {struct ieee80211_hw* hw; } ;
struct ieee80211_conf {int listen_interval; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;


 int MAC_REG_PSCTL ;
 int PSCTL_LNBCN ;
 int vnt_mac_reg_bits_on (struct vnt_private*,int ,int ) ;

int vnt_next_tbtt_wakeup(struct vnt_private *priv)
{
 struct ieee80211_hw *hw = priv->hw;
 struct ieee80211_conf *conf = &hw->conf;
 int wake_up = 0;

 if (conf->listen_interval > 1) {

  vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_LNBCN);
  wake_up = 1;
 }

 return wake_up;
}
