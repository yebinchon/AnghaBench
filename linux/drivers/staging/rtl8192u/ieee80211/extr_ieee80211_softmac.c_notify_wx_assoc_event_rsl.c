
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct TYPE_3__ {int bssid; } ;
struct ieee80211_device {scalar_t__ state; int dev; TYPE_1__ current_network; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 scalar_t__ IEEE80211_LINKED ;
 int SIOCGIWAP ;
 int eth_zero_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

void notify_wx_assoc_event(struct ieee80211_device *ieee)
{
 union iwreq_data wrqu;

 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 if (ieee->state == IEEE80211_LINKED)
  memcpy(wrqu.ap_addr.sa_data, ieee->current_network.bssid, ETH_ALEN);
 else
  eth_zero_addr(wrqu.ap_addr.sa_data);
 wireless_send_event(ieee->dev, SIOCGIWAP, &wrqu, ((void*)0));
}
