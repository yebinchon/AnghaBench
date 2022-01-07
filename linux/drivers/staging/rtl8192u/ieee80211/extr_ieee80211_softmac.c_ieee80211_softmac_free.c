
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int wx_mutex; int associate_retry_wq; int associate_timer; int * dot11d_info; } ;


 int cancel_delayed_work (int *) ;
 int del_timer_sync (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_softmac_free(struct ieee80211_device *ieee)
{
 mutex_lock(&ieee->wx_mutex);
 kfree(ieee->dot11d_info);
 ieee->dot11d_info = ((void*)0);
 del_timer_sync(&ieee->associate_timer);

 cancel_delayed_work(&ieee->associate_retry_wq);

 mutex_unlock(&ieee->wx_mutex);
}
