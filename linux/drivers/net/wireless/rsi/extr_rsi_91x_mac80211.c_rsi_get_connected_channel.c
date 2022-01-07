
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct ieee80211_channel* chan; } ;
struct ieee80211_bss_conf {TYPE_1__ chandef; } ;
struct ieee80211_vif {struct ieee80211_bss_conf bss_conf; } ;
struct ieee80211_channel {int hw_value; } ;



u16 rsi_get_connected_channel(struct ieee80211_vif *vif)
{
 struct ieee80211_bss_conf *bss;
 struct ieee80211_channel *channel;

 if (!vif)
  return 0;

 bss = &vif->bss_conf;
 channel = bss->chandef.chan;

 if (!channel)
  return 0;

 return channel->hw_value;
}
