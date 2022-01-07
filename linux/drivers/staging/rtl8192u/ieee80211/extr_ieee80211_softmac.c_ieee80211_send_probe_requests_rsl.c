
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int softmac_features; scalar_t__ active_scan; } ;


 int IEEE_SOFTMAC_PROBERQ ;
 int ieee80211_send_probe (struct ieee80211_device*) ;

__attribute__((used)) static void ieee80211_send_probe_requests(struct ieee80211_device *ieee)
{
 if (ieee->active_scan && (ieee->softmac_features & IEEE_SOFTMAC_PROBERQ)) {
  ieee80211_send_probe(ieee);
  ieee80211_send_probe(ieee);
 }
}
