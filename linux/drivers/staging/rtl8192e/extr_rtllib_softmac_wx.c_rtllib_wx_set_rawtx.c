
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct rtllib_device {short raw_tx; scalar_t__ iw_mode; int wx_mutex; int dev; int (* data_hard_resume ) (int ) ;} ;
struct iw_request_info {int dummy; } ;


 scalar_t__ IW_MODE_MONITOR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (int ,char*,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;
 int stub1 (int ) ;

int rtllib_wx_set_rawtx(struct rtllib_device *ieee,
   struct iw_request_info *info,
   union iwreq_data *wrqu, char *extra)
{

 int *parms = (int *)extra;
 int enable = (parms[0] > 0);
 short prev = ieee->raw_tx;

 mutex_lock(&ieee->wx_mutex);

 if (enable)
  ieee->raw_tx = 1;
 else
  ieee->raw_tx = 0;

 netdev_info(ieee->dev, "raw TX is %s\n",
      ieee->raw_tx ? "enabled" : "disabled");

 if (ieee->iw_mode == IW_MODE_MONITOR) {
  if (prev == 0 && ieee->raw_tx) {
   if (ieee->data_hard_resume)
    ieee->data_hard_resume(ieee->dev);

   netif_carrier_on(ieee->dev);
  }

  if (prev && ieee->raw_tx == 1)
   netif_carrier_off(ieee->dev);
 }

 mutex_unlock(&ieee->wx_mutex);

 return 0;
}
