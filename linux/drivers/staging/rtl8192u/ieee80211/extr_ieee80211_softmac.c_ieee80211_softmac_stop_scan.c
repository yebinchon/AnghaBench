
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int scanning; int scan_mutex; int softmac_scan_wq; } ;


 int cancel_delayed_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ieee80211_softmac_stop_scan(struct ieee80211_device *ieee)
{




 mutex_lock(&ieee->scan_mutex);


 if (ieee->scanning == 1) {
  ieee->scanning = 0;

  cancel_delayed_work(&ieee->softmac_scan_wq);
 }


 mutex_unlock(&ieee->scan_mutex);
}
