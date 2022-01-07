
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtllib_device {int dev; TYPE_1__* pHTInfo; } ;
struct TYPE_2__ {scalar_t__ bCurrentHTSupport; } ;


 scalar_t__ Frame_Order (int*) ;
 scalar_t__ IsQoSDataFrame (int*) ;
 int netdev_dbg (int ,char*) ;

u8 HTCCheck(struct rtllib_device *ieee, u8 *pFrame)
{
 if (ieee->pHTInfo->bCurrentHTSupport) {
  if ((IsQoSDataFrame(pFrame) && Frame_Order(pFrame)) == 1) {
   netdev_dbg(ieee->dev, "HT CONTROL FILED EXIST!!\n");
   return 1;
  }
 }
 return 0;
}
