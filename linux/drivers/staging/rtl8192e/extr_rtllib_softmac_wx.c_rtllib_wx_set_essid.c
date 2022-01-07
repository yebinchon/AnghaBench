
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; scalar_t__ flags; } ;
union iwreq_data {TYPE_1__ essid; } ;
struct TYPE_4__ {char* ssid; int ssid_len; } ;
struct rtllib_device {short proto_started; scalar_t__ iw_mode; int cannot_notify; int ssid_set; int wx_mutex; int lock; TYPE_2__ current_network; } ;
struct iw_request_info {int dummy; } ;


 int IW_ESSID_MAX_SIZE ;
 scalar_t__ IW_MODE_MONITOR ;
 int __u16 ;
 int min_t (int ,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtllib_start_protocol (struct rtllib_device*) ;
 int rtllib_stop_protocol (struct rtllib_device*,int) ;
 int rtllib_stop_scan_syncro (struct rtllib_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (char*,char*,int) ;

int rtllib_wx_set_essid(struct rtllib_device *ieee,
   struct iw_request_info *a,
   union iwreq_data *wrqu, char *extra)
{

 int ret = 0, len, i;
 short proto_started;
 unsigned long flags;

 rtllib_stop_scan_syncro(ieee);
 mutex_lock(&ieee->wx_mutex);

 proto_started = ieee->proto_started;

 len = min_t(__u16, wrqu->essid.length, IW_ESSID_MAX_SIZE);

 if (ieee->iw_mode == IW_MODE_MONITOR) {
  ret = -1;
  goto out;
 }

 for (i = 0; i < len; i++) {
  if (extra[i] < 0) {
   ret = -1;
   goto out;
  }
 }

 if (proto_started)
  rtllib_stop_protocol(ieee, 1);





 spin_lock_irqsave(&ieee->lock, flags);

 if (wrqu->essid.flags && wrqu->essid.length) {
  strncpy(ieee->current_network.ssid, extra, len);
  ieee->current_network.ssid_len = len;
  ieee->cannot_notify = 0;
  ieee->ssid_set = 1;
 } else {
  ieee->ssid_set = 0;
  ieee->current_network.ssid[0] = '\0';
  ieee->current_network.ssid_len = 0;
 }
 spin_unlock_irqrestore(&ieee->lock, flags);

 if (proto_started)
  rtllib_start_protocol(ieee);
out:
 mutex_unlock(&ieee->wx_mutex);
 return ret;
}
