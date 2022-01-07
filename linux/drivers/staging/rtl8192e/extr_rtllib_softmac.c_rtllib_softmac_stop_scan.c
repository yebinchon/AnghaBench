
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int scanning_continue; int actscanning; int scan_mutex; int softmac_scan_wq; scalar_t__ scan_watch_dog; } ;


 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rtllib_softmac_stop_scan(struct rtllib_device *ieee)
{
 mutex_lock(&ieee->scan_mutex);
 ieee->scan_watch_dog = 0;
 if (ieee->scanning_continue == 1) {
  ieee->scanning_continue = 0;
  ieee->actscanning = 0;

  cancel_delayed_work_sync(&ieee->softmac_scan_wq);
 }

 mutex_unlock(&ieee->scan_mutex);
}
