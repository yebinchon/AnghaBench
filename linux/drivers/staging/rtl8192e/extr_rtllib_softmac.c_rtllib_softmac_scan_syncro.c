
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrqu ;
typedef union iwreq_data {int dummy; } iwreq_data ;
typedef int u8 ;
struct rtllib_device {int be_scan_inprogress; int* active_channel_map; scalar_t__ state; int actscanning; int dev; int scan_mutex; scalar_t__ sync_scan_hurryup; int (* set_chan ) (int ,short) ;} ;


 scalar_t__ IS_DOT11D_ENABLE (struct rtllib_device*) ;
 short MAX_CHANNEL_NUMBER ;
 scalar_t__ RTLLIB_LINKED ;
 int RTLLIB_SOFTMAC_SCAN_TIME ;
 int SIOCGIWSCAN ;
 int dot11d_scan_complete (struct rtllib_device*) ;
 int memset (union iwreq_data*,int ,int) ;
 int msleep_interruptible_rsl (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (int ,char*) ;
 int rtllib_send_probe_requests (struct rtllib_device*,int ) ;
 int rtllib_update_active_chan_map (struct rtllib_device*) ;
 int stub1 (int ,short) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void rtllib_softmac_scan_syncro(struct rtllib_device *ieee, u8 is_mesh)
{
 union iwreq_data wrqu;
 short ch = 0;

 rtllib_update_active_chan_map(ieee);

 ieee->be_scan_inprogress = 1;

 mutex_lock(&ieee->scan_mutex);

 while (1) {
  do {
   ch++;
   if (ch > MAX_CHANNEL_NUMBER)
    goto out;
  } while (!ieee->active_channel_map[ch]);
  if (ieee->state == RTLLIB_LINKED)
   goto out;
  if (ieee->sync_scan_hurryup) {
   netdev_info(ieee->dev,
        "============>sync_scan_hurryup out\n");
   goto out;
  }

  ieee->set_chan(ieee->dev, ch);
  if (ieee->active_channel_map[ch] == 1)
   rtllib_send_probe_requests(ieee, 0);




  msleep_interruptible_rsl(RTLLIB_SOFTMAC_SCAN_TIME);
 }
out:
 ieee->actscanning = 0;
 ieee->sync_scan_hurryup = 0;

 if (ieee->state >= RTLLIB_LINKED) {
  if (IS_DOT11D_ENABLE(ieee))
   dot11d_scan_complete(ieee);
 }
 mutex_unlock(&ieee->scan_mutex);

 ieee->be_scan_inprogress = 0;

 memset(&wrqu, 0, sizeof(wrqu));
 wireless_send_event(ieee->dev, SIOCGIWSCAN, &wrqu, ((void*)0));
}
