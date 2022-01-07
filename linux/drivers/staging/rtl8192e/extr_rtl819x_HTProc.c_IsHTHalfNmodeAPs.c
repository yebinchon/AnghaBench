
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bdRT2RTAggregation; } ;
struct rtllib_network {TYPE_1__ bssht; scalar_t__ broadcom_cap_exist; int bssid; scalar_t__ ralink_cap_exist; } ;
struct rtllib_device {struct rtllib_network current_network; } ;


 int AIRLINK_RALINK ;
 int BELKINF5D82334V3_RALINK ;
 int BELKINF5D8233V1_RALINK ;
 int EDIMAX_RALINK ;
 int LINKSYSWRT330_LINKSYSWRT300_BROADCOM ;
 int LINKSYSWRT350_LINKSYSWRT150_BROADCOM ;
 int PCI_RALINK ;
 int UNKNOWN_BORADCOM ;
 scalar_t__ memcmp (int ,int ,int) ;

bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
{
 bool retValue = 0;
 struct rtllib_network *net = &ieee->current_network;

 if ((memcmp(net->bssid, BELKINF5D8233V1_RALINK, 3) == 0) ||
     (memcmp(net->bssid, BELKINF5D82334V3_RALINK, 3) == 0) ||
     (memcmp(net->bssid, PCI_RALINK, 3) == 0) ||
     (memcmp(net->bssid, EDIMAX_RALINK, 3) == 0) ||
     (memcmp(net->bssid, AIRLINK_RALINK, 3) == 0) ||
     (net->ralink_cap_exist))
  retValue = 1;
 else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
  !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
  !memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
  (net->broadcom_cap_exist))
  retValue = 1;
 else if (net->bssht.bdRT2RTAggregation)
  retValue = 1;
 else
  retValue = 0;

 return retValue;
}
