
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int bssid; } ;
struct rtllib_device {int state; TYPE_1__ current_network; int dev; int (* SetHwRegHandler ) (int ,int ,int *) ;} ;


 int HW_VAR_CECHK_BSSID ;
 int RTLLIB_NOLINK ;
 int rtllib_MlmeDisassociateRequest (struct rtllib_device*,int ,int ) ;
 int stub1 (int ,int ,int *) ;

__attribute__((used)) static void
rtllib_MgntDisconnectAP(
 struct rtllib_device *rtllib,
 u8 asRsn
)
{
 bool bFilterOutNonAssociatedBSSID = 0;

 bFilterOutNonAssociatedBSSID = 0;
 rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_CECHK_BSSID,
    (u8 *)(&bFilterOutNonAssociatedBSSID));
 rtllib_MlmeDisassociateRequest(rtllib, rtllib->current_network.bssid,
           asRsn);

 rtllib->state = RTLLIB_NOLINK;
}
