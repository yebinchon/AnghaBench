
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_network {short capability; } ;


 short WLAN_CAPABILITY_SHORT_SLOT ;

short ieee80211_is_shortslot(const struct ieee80211_network *net)
{
 return net->capability & WLAN_CAPABILITY_SHORT_SLOT;
}
