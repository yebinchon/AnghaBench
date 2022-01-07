
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int start_ibss_wq; } ;


 int schedule_delayed_work (int *,int) ;

inline void ieee80211_start_ibss(struct ieee80211_device *ieee)
{
 schedule_delayed_work(&ieee->start_ibss_wq, 150);
}
