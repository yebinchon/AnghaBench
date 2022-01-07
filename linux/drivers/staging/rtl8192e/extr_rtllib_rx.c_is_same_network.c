
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_network {scalar_t__ ssid_len; scalar_t__ channel; int capability; int ssid; int bssid; } ;


 scalar_t__ ETH_ALEN ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_IBSS ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int is_same_network(struct rtllib_network *src,
      struct rtllib_network *dst, u8 ssidbroad)
{





 return (((src->ssid_len == dst->ssid_len) || (!ssidbroad)) &&
  (src->channel == dst->channel) &&
  !memcmp(src->bssid, dst->bssid, ETH_ALEN) &&
  (!memcmp(src->ssid, dst->ssid, src->ssid_len) ||
  (!ssidbroad)) &&
  ((src->capability & WLAN_CAPABILITY_IBSS) ==
  (dst->capability & WLAN_CAPABILITY_IBSS)) &&
  ((src->capability & WLAN_CAPABILITY_ESS) ==
  (dst->capability & WLAN_CAPABILITY_ESS)));
}
