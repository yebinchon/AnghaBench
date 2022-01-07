
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct r8192_priv {TYPE_2__* rtllib; } ;
struct TYPE_3__ {size_t SlotNum; scalar_t__* RxDataNum; scalar_t__* RxBcnNum; scalar_t__ NumRecvDataInPeriod; scalar_t__ NumRecvBcnInPeriod; int SlotIndex; } ;
struct TYPE_4__ {TYPE_1__ LinkDetectInfo; } ;



__attribute__((used)) static void _rtl92e_update_rxcounts(struct r8192_priv *priv, u32 *TotalRxBcnNum,
        u32 *TotalRxDataNum)
{
 u16 SlotIndex;
 u8 i;

 *TotalRxBcnNum = 0;
 *TotalRxDataNum = 0;

 SlotIndex = (priv->rtllib->LinkDetectInfo.SlotIndex++) %
   (priv->rtllib->LinkDetectInfo.SlotNum);
 priv->rtllib->LinkDetectInfo.RxBcnNum[SlotIndex] =
   priv->rtllib->LinkDetectInfo.NumRecvBcnInPeriod;
 priv->rtllib->LinkDetectInfo.RxDataNum[SlotIndex] =
   priv->rtllib->LinkDetectInfo.NumRecvDataInPeriod;
 for (i = 0; i < priv->rtllib->LinkDetectInfo.SlotNum; i++) {
  *TotalRxBcnNum += priv->rtllib->LinkDetectInfo.RxBcnNum[i];
  *TotalRxDataNum += priv->rtllib->LinkDetectInfo.RxDataNum[i];
 }
}
