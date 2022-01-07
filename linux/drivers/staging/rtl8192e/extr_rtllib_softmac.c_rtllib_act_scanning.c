
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int softmac_features; int be_scan_inprogress; int status; scalar_t__ actscanning; } ;


 int IEEE_SOFTMAC_SCAN ;
 int STATUS_SCANNING ;
 int test_bit (int ,int *) ;

bool rtllib_act_scanning(struct rtllib_device *ieee, bool sync_scan)
{
 if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {
  if (sync_scan)
   return ieee->be_scan_inprogress;
  else
   return ieee->actscanning || ieee->be_scan_inprogress;
 } else {
  return test_bit(STATUS_SCANNING, &ieee->status);
 }
}
