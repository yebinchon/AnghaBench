
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union iwreq_data {int mode; } ;
struct rtllib_device {int iw_mode; int wx_mutex; int proto_started; TYPE_1__* dev; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int type; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211 ;
 int EINVAL ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtllib_DisableNetMonitorMode (TYPE_1__*,int) ;
 int rtllib_EnableNetMonitorMode (TYPE_1__*,int) ;
 int rtllib_start_protocol (struct rtllib_device*) ;
 int rtllib_stop_protocol (struct rtllib_device*,int) ;
 int rtllib_stop_scan_syncro (struct rtllib_device*) ;

int rtllib_wx_set_mode(struct rtllib_device *ieee, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 int set_mode_status = 0;

 rtllib_stop_scan_syncro(ieee);
 mutex_lock(&ieee->wx_mutex);
 switch (wrqu->mode) {
 case 128:
 case 131:
 case 129:
  break;
 case 130:
  wrqu->mode = 129;
  break;
 default:
  set_mode_status = -EINVAL;
  goto out;
 }

 if (wrqu->mode == ieee->iw_mode)
  goto out;

 if (wrqu->mode == 128) {
  ieee->dev->type = ARPHRD_IEEE80211;
  rtllib_EnableNetMonitorMode(ieee->dev, 0);
 } else {
  ieee->dev->type = ARPHRD_ETHER;
  if (ieee->iw_mode == 128)
   rtllib_DisableNetMonitorMode(ieee->dev, 0);
 }

 if (!ieee->proto_started) {
  ieee->iw_mode = wrqu->mode;
 } else {
  rtllib_stop_protocol(ieee, 1);
  ieee->iw_mode = wrqu->mode;
  rtllib_start_protocol(ieee);
 }

out:
 mutex_unlock(&ieee->wx_mutex);
 return set_mode_status;
}
