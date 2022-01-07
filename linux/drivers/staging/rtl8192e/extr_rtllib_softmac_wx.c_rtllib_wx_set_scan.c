
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct rtllib_device {scalar_t__ iw_mode; scalar_t__ state; int wx_mutex; int wx_sync_scan_wq; int proto_started; } ;
struct iw_request_info {int dummy; } ;


 scalar_t__ IW_MODE_MONITOR ;
 scalar_t__ RTLLIB_LINKED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

int rtllib_wx_set_scan(struct rtllib_device *ieee, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 int ret = 0;

 mutex_lock(&ieee->wx_mutex);

 if (ieee->iw_mode == IW_MODE_MONITOR || !(ieee->proto_started)) {
  ret = -1;
  goto out;
 }

 if (ieee->state == RTLLIB_LINKED) {
  schedule_work(&ieee->wx_sync_scan_wq);

  return 0;
 }

out:
 mutex_unlock(&ieee->wx_mutex);
 return ret;
}
