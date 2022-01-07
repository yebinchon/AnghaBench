
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int netdev; } ;


 int GFP_KERNEL ;
 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;

void prism2_disconnected(struct wlandevice *wlandev)
{
 cfg80211_disconnected(wlandev->netdev, 0, ((void*)0),
         0, 0, GFP_KERNEL);
}
