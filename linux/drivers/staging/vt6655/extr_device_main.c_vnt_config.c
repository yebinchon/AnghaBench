
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct vnt_private {scalar_t__ byBBType; int wCurrentRate; } ;
struct TYPE_3__ {TYPE_2__* chan; } ;
struct ieee80211_conf {int flags; TYPE_1__ chandef; int listen_interval; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct vnt_private* priv; } ;
struct TYPE_4__ {scalar_t__ band; int hw_value; } ;


 scalar_t__ BB_TYPE_11A ;
 scalar_t__ BB_TYPE_11B ;
 scalar_t__ BB_TYPE_11G ;
 int CARDbSetPhyParameter (struct vnt_private*,scalar_t__) ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_POWER ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_OFFCHANNEL ;
 int IEEE80211_CONF_PS ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int PSvDisablePowerSaving (struct vnt_private*) ;
 int PSvEnablePowerSaving (struct vnt_private*,int ) ;
 int RATE_1M ;
 int RATE_54M ;
 int RFbSetPower (struct vnt_private*,int ,int ) ;
 int set_channel (struct vnt_private*,TYPE_2__*) ;

__attribute__((used)) static int vnt_config(struct ieee80211_hw *hw, u32 changed)
{
 struct vnt_private *priv = hw->priv;
 struct ieee80211_conf *conf = &hw->conf;
 u8 bb_type;

 if (changed & IEEE80211_CONF_CHANGE_PS) {
  if (conf->flags & IEEE80211_CONF_PS)
   PSvEnablePowerSaving(priv, conf->listen_interval);
  else
   PSvDisablePowerSaving(priv);
 }

 if ((changed & IEEE80211_CONF_CHANGE_CHANNEL) ||
     (conf->flags & IEEE80211_CONF_OFFCHANNEL)) {
  set_channel(priv, conf->chandef.chan);

  if (conf->chandef.chan->band == NL80211_BAND_5GHZ)
   bb_type = BB_TYPE_11A;
  else
   bb_type = BB_TYPE_11G;

  if (priv->byBBType != bb_type) {
   priv->byBBType = bb_type;

   CARDbSetPhyParameter(priv, priv->byBBType);
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_POWER) {
  if (priv->byBBType == BB_TYPE_11B)
   priv->wCurrentRate = RATE_1M;
  else
   priv->wCurrentRate = RATE_54M;

  RFbSetPower(priv, priv->wCurrentRate,
       conf->chandef.chan->hw_value);
 }

 return 0;
}
