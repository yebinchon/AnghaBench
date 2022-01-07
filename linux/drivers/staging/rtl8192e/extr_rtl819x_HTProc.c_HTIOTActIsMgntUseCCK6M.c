
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtllib_network {int dummy; } ;
struct rtllib_device {TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ IOTPeer; } ;


 scalar_t__ HT_IOT_PEER_BROADCOM ;

__attribute__((used)) static u8 HTIOTActIsMgntUseCCK6M(struct rtllib_device *ieee,
     struct rtllib_network *network)
{
 u8 retValue = 0;


 if (ieee->pHTInfo->IOTPeer == HT_IOT_PEER_BROADCOM)
  retValue = 1;

 return retValue;
}
