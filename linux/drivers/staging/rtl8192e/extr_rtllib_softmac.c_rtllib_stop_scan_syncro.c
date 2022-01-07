
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int softmac_features; int sync_scan_hurryup; int dev; int (* rtllib_stop_hw_scan ) (int ) ;} ;


 int IEEE_SOFTMAC_SCAN ;
 int stub1 (int ) ;

void rtllib_stop_scan_syncro(struct rtllib_device *ieee)
{
 if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
  ieee->sync_scan_hurryup = 1;
 } else {
  if (ieee->rtllib_stop_hw_scan)
   ieee->rtllib_stop_hw_scan(ieee->dev);
 }
}
