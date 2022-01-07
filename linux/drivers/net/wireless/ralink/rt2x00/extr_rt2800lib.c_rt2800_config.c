
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00lib_conf {TYPE_2__* conf; int channel; int rf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_3__ {int chan; } ;
struct TYPE_4__ {int power_level; TYPE_1__ chandef; } ;


 unsigned int const IEEE80211_CONF_CHANGE_CHANNEL ;
 unsigned int const IEEE80211_CONF_CHANGE_POWER ;
 unsigned int const IEEE80211_CONF_CHANGE_PS ;
 unsigned int const IEEE80211_CONF_CHANGE_RETRY_LIMITS ;
 int rt2800_config_channel (struct rt2x00_dev*,TYPE_2__*,int *,int *) ;
 int rt2800_config_lna_gain (struct rt2x00_dev*,struct rt2x00lib_conf*) ;
 int rt2800_config_ps (struct rt2x00_dev*,struct rt2x00lib_conf*) ;
 int rt2800_config_retry_limit (struct rt2x00_dev*,struct rt2x00lib_conf*) ;
 int rt2800_config_txpower (struct rt2x00_dev*,int ,int ) ;

void rt2800_config(struct rt2x00_dev *rt2x00dev,
     struct rt2x00lib_conf *libconf,
     const unsigned int flags)
{

 rt2800_config_lna_gain(rt2x00dev, libconf);

 if (flags & IEEE80211_CONF_CHANGE_CHANNEL) {
  rt2800_config_channel(rt2x00dev, libconf->conf,
          &libconf->rf, &libconf->channel);
  rt2800_config_txpower(rt2x00dev, libconf->conf->chandef.chan,
          libconf->conf->power_level);
 }
 if (flags & IEEE80211_CONF_CHANGE_POWER)
  rt2800_config_txpower(rt2x00dev, libconf->conf->chandef.chan,
          libconf->conf->power_level);
 if (flags & IEEE80211_CONF_CHANGE_RETRY_LIMITS)
  rt2800_config_retry_limit(rt2x00dev, libconf);
 if (flags & IEEE80211_CONF_CHANGE_PS)
  rt2800_config_ps(rt2x00dev, libconf);
}
