
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* bssid; } ;
struct rtllib_device {TYPE_1__ current_network; int dev; int (* SetHwRegHandler ) (int ,int ,int*) ;void* OpMode; int state; } ;


 int HW_VAR_BSSID ;
 int HW_VAR_MEDIA_STATUS ;
 int RTLLIB_NOLINK ;
 void* RT_OP_MODE_NO_LINK ;
 int RemovePeerTS (struct rtllib_device*,int*) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int rtllib_disassociate (struct rtllib_device*) ;
 int stub1 (int ,int ,int*) ;
 int stub2 (int ,int ,int*) ;

__attribute__((used)) static void rtllib_MlmeDisassociateRequest(struct rtllib_device *rtllib,
        u8 *asSta, u8 asRsn)
{
 u8 i;
 u8 OpMode;

 RemovePeerTS(rtllib, asSta);

 if (memcmp(rtllib->current_network.bssid, asSta, 6) == 0) {
  rtllib->state = RTLLIB_NOLINK;

  for (i = 0; i < 6; i++)
   rtllib->current_network.bssid[i] = 0x22;
  OpMode = RT_OP_MODE_NO_LINK;
  rtllib->OpMode = RT_OP_MODE_NO_LINK;
  rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_MEDIA_STATUS,
     (u8 *)(&OpMode));
  rtllib_disassociate(rtllib);

  rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_BSSID,
     rtllib->current_network.bssid);

 }

}
