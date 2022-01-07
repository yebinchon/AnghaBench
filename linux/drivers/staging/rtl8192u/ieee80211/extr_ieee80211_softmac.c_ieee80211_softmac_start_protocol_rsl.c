
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int wx_mutex; scalar_t__ sync_scan_hurryup; } ;


 int ieee80211_start_protocol (struct ieee80211_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_softmac_start_protocol(struct ieee80211_device *ieee)
{
 ieee->sync_scan_hurryup = 0;
 mutex_lock(&ieee->wx_mutex);
 ieee80211_start_protocol(ieee);
 mutex_unlock(&ieee->wx_mutex);
}
