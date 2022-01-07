
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int softmac_features; int dev; int (* start_send_beacons ) (int ) ;} ;


 int IEEE_SOFTMAC_BEACONS ;
 int rtllib_beacons_start (struct rtllib_device*) ;
 int stub1 (int ) ;

void rtllib_start_send_beacons(struct rtllib_device *ieee)
{
 if (ieee->start_send_beacons)
  ieee->start_send_beacons(ieee->dev);
 if (ieee->softmac_features & IEEE_SOFTMAC_BEACONS)
  rtllib_beacons_start(ieee);
}
