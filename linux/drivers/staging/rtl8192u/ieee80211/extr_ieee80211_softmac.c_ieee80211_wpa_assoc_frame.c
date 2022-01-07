
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int dummy; } ;


 int ieee80211_disassociate (struct ieee80211_device*) ;
 int ieee80211_wpa_enable (struct ieee80211_device*,int) ;

__attribute__((used)) static void ieee80211_wpa_assoc_frame(struct ieee80211_device *ieee,
          char *wpa_ie, int wpa_ie_len)
{

 ieee80211_wpa_enable(ieee, 1);

 ieee80211_disassociate(ieee);
}
