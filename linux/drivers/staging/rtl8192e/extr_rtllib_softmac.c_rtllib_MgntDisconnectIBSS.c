
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* bssid; } ;
struct rtllib_device {int dev; int (* SetHwRegHandler ) (int ,int ,int*) ;TYPE_1__ current_network; void* OpMode; int state; } ;


 int HW_VAR_BSSID ;
 int HW_VAR_CECHK_BSSID ;
 int HW_VAR_MEDIA_STATUS ;
 int RTLLIB_NOLINK ;
 void* RT_OP_MODE_NO_LINK ;
 int notify_wx_assoc_event (struct rtllib_device*) ;
 int rtllib_stop_send_beacons (struct rtllib_device*) ;
 int stub1 (int ,int ,int*) ;
 int stub2 (int ,int ,int*) ;
 int stub3 (int ,int ,int*) ;

__attribute__((used)) static void rtllib_MgntDisconnectIBSS(struct rtllib_device *rtllib)
{
 u8 OpMode;
 u8 i;
 bool bFilterOutNonAssociatedBSSID = 0;

 rtllib->state = RTLLIB_NOLINK;

 for (i = 0; i < 6; i++)
  rtllib->current_network.bssid[i] = 0x55;

 rtllib->OpMode = RT_OP_MODE_NO_LINK;
 rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_BSSID,
    rtllib->current_network.bssid);
 OpMode = RT_OP_MODE_NO_LINK;
 rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_MEDIA_STATUS, &OpMode);
 rtllib_stop_send_beacons(rtllib);

 bFilterOutNonAssociatedBSSID = 0;
 rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_CECHK_BSSID,
    (u8 *)(&bFilterOutNonAssociatedBSSID));
 notify_wx_assoc_event(rtllib);

}
