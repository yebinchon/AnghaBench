
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vnt_private {scalar_t__ bb_type; int current_rate; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {int flags; TYPE_2__ chandef; int listen_interval; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct vnt_private* priv; } ;
struct TYPE_3__ {scalar_t__ band; int hw_value; } ;


 scalar_t__ BB_TYPE_11A ;
 scalar_t__ BB_TYPE_11B ;
 scalar_t__ BB_TYPE_11G ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int IEEE80211_CONF_PS ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int RATE_1M ;
 int RATE_54M ;
 int vnt_disable_power_saving (struct vnt_private*) ;
 int vnt_enable_power_saving (struct vnt_private*,int ) ;
 int vnt_rf_setpower (struct vnt_private*,int ,int ) ;
 int vnt_set_channel (struct vnt_private*,int ) ;

__attribute__((used)) static int vnt_config(struct ieee80211_hw *hw, u32 changed)
{
 struct vnt_private *priv = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;

 if (changed & IEEE80211_CONF_CHANGE_PS) {
  if (conf->flags & IEEE80211_CONF_PS)
   vnt_enable_power_saving(priv, conf->listen_interval);
  else
   vnt_disable_power_saving(priv);
 }

 if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) ||
     (conf->flags & IEEE80211_CONF_OFFCHANNEL)) {
  vnt_set_channel(priv, conf->chandef.chan->hw_value);

  if (conf->chandef.chan->band == NL80211_BAND_5GHZ)
   priv->bb_type = BB_TYPE_11A;
  else
   priv->bb_type = BB_TYPE_11G;
 }

 if (changed & IEEE80211_CONF_CHANGE_POWER) {
  if (priv->bb_type == BB_TYPE_11B)
   priv->current_rate = RATE_1M;
  else
   priv->current_rate = RATE_54M;

  vnt_rf_setpower(priv, priv->current_rate,
    conf->chandef.chan->hw_value);
 }

 return 0;
}
