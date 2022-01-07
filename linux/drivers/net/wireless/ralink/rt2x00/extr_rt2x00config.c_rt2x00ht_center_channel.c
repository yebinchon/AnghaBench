
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct hw_mode_spec {size_t num_channels; TYPE_3__* channels; } ;
struct rt2x00_dev {struct hw_mode_spec spec; } ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct ieee80211_conf {TYPE_2__ chandef; } ;
struct TYPE_6__ {int channel; } ;
struct TYPE_4__ {size_t hw_value; } ;


 int WARN_ON (int) ;
 scalar_t__ conf_is_ht40_minus (struct ieee80211_conf*) ;
 scalar_t__ conf_is_ht40_plus (struct ieee80211_conf*) ;

__attribute__((used)) static u16 rt2x00ht_center_channel(struct rt2x00_dev *rt2x00dev,
       struct ieee80211_conf *conf)
{
 struct hw_mode_spec *spec = &rt2x00dev->spec;
 int center_channel;
 u16 i;




 center_channel = spec->channels[conf->chandef.chan->hw_value].channel;




 if (conf_is_ht40_plus(conf))
  center_channel += 2;
 else if (conf_is_ht40_minus(conf))
  center_channel -= (center_channel == 14) ? 1 : 2;

 for (i = 0; i < spec->num_channels; i++)
  if (spec->channels[i].channel == center_channel)
   return i;

 WARN_ON(1);
 return conf->chandef.chan->hw_value;
}
