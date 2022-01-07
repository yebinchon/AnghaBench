
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_freq {int e; int m; } ;
union iwreq_data {struct iw_freq freq; } ;
struct TYPE_2__ {size_t channel; } ;
struct rtllib_device {scalar_t__ iw_mode; int* active_channel_map; scalar_t__ state; int wx_mutex; TYPE_1__ current_network; int dev; int (* set_chan ) (int ,size_t) ;} ;
struct iw_request_info {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 scalar_t__ RTLLIB_LINKED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtllib_start_send_beacons (struct rtllib_device*) ;
 int rtllib_stop_send_beacons (struct rtllib_device*) ;
 int* rtllib_wlan_frequencies ;
 int stub1 (int ,size_t) ;

int rtllib_wx_set_freq(struct rtllib_device *ieee, struct iw_request_info *a,
        union iwreq_data *wrqu, char *b)
{
 int ret;
 struct iw_freq *fwrq = &wrqu->freq;

 mutex_lock(&ieee->wx_mutex);

 if (ieee->iw_mode == IW_MODE_INFRA) {
  ret = 0;
  goto out;
 }


 if (fwrq->e == 1) {
  if ((fwrq->m >= (int) 2.412e8 &&
       fwrq->m <= (int) 2.487e8)) {
   int f = fwrq->m / 100000;
   int c = 0;

   while ((c < 14) && (f != rtllib_wlan_frequencies[c]))
    c++;


   fwrq->e = 0;
   fwrq->m = c + 1;
  }
 }

 if (fwrq->e > 0 || fwrq->m > 14 || fwrq->m < 1) {
  ret = -EOPNOTSUPP;
  goto out;

 } else {

  if (ieee->active_channel_map[fwrq->m] != 1) {
   ret = -EINVAL;
   goto out;
  }
  ieee->current_network.channel = fwrq->m;
  ieee->set_chan(ieee->dev, ieee->current_network.channel);

  if (ieee->iw_mode == IW_MODE_ADHOC ||
      ieee->iw_mode == IW_MODE_MASTER)
   if (ieee->state == RTLLIB_LINKED) {
    rtllib_stop_send_beacons(ieee);
    rtllib_start_send_beacons(ieee);
   }
 }

 ret = 0;
out:
 mutex_unlock(&ieee->wx_mutex);
 return ret;
}
