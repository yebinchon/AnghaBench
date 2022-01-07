
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {scalar_t__ ps; scalar_t__ state; scalar_t__ iw_mode; int dev; int (* sta_wake_up ) (int ) ;} ;


 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ RTLLIB_LINKED ;
 scalar_t__ RTLLIB_PS_DISABLED ;
 int rtllib_MgntDisconnectAP (struct rtllib_device*,int ) ;
 int rtllib_MgntDisconnectIBSS (struct rtllib_device*) ;
 int stub1 (int ) ;

bool rtllib_MgntDisconnect(struct rtllib_device *rtllib, u8 asRsn)
{
 if (rtllib->ps != RTLLIB_PS_DISABLED)
  rtllib->sta_wake_up(rtllib->dev);

 if (rtllib->state == RTLLIB_LINKED) {
  if (rtllib->iw_mode == IW_MODE_ADHOC)
   rtllib_MgntDisconnectIBSS(rtllib);
  if (rtllib->iw_mode == IW_MODE_INFRA)
   rtllib_MgntDisconnectAP(rtllib, asRsn);

 }

 return 1;
}
