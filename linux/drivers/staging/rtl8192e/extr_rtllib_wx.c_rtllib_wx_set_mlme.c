
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
typedef int u8 ;
struct TYPE_2__ {int* bssid; char* ssid; int ssid_len; } ;
struct rtllib_device {scalar_t__ state; int cannot_notify; int wx_mutex; TYPE_1__ current_network; int ssid_set; int wap_set; int dev; } ;
struct iw_request_info {int dummy; } ;
struct iw_mlme {int cmd; int reason_code; } ;


 int ENOLINK ;
 int EOPNOTSUPP ;


 scalar_t__ RTLLIB_LINKED ;
 int SendDisassociation (struct rtllib_device*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (int ,char*) ;
 int rtllib_disassociate (struct rtllib_device*) ;

int rtllib_wx_set_mlme(struct rtllib_device *ieee,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 u8 i = 0;
 bool deauth = 0;
 struct iw_mlme *mlme = (struct iw_mlme *) extra;

 if (ieee->state != RTLLIB_LINKED)
  return -ENOLINK;

 mutex_lock(&ieee->wx_mutex);

 switch (mlme->cmd) {
 case 129:
  deauth = 1;

 case 128:
  if (deauth)
   netdev_info(ieee->dev, "disauth packet !\n");
  else
   netdev_info(ieee->dev, "dis associate packet!\n");

  ieee->cannot_notify = 1;

  SendDisassociation(ieee, deauth, mlme->reason_code);
  rtllib_disassociate(ieee);

  ieee->wap_set = 0;
  for (i = 0; i < 6; i++)
   ieee->current_network.bssid[i] = 0x55;

  ieee->ssid_set = 0;
  ieee->current_network.ssid[0] = '\0';
  ieee->current_network.ssid_len = 0;
  break;
 default:
  mutex_unlock(&ieee->wx_mutex);
  return -EOPNOTSUPP;
 }

 mutex_unlock(&ieee->wx_mutex);

 return 0;
}
