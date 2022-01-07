
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct adapter {int dummy; } ;
struct TYPE_4__ {scalar_t__ bPreBtCtrlAggBufSize; scalar_t__ bBtCtrlAggBufSize; scalar_t__ preAggBufSize; scalar_t__ aggBufSize; scalar_t__ bRejectAggPkt; } ;
struct TYPE_5__ {TYPE_1__ btInfo; struct adapter* Adapter; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int rtw_btcoex_RejectApAggregatedPacket (struct adapter*,int) ;

__attribute__((used)) static void halbtcoutsrc_AggregationCheck(PBTC_COEXIST pBtCoexist)
{
 struct adapter *padapter;
 bool bNeedToAct;


 padapter = pBtCoexist->Adapter;
 bNeedToAct = 0;

 if (pBtCoexist->btInfo.bRejectAggPkt) {
  rtw_btcoex_RejectApAggregatedPacket(padapter, 1);
 } else {
  if (pBtCoexist->btInfo.bPreBtCtrlAggBufSize !=
   pBtCoexist->btInfo.bBtCtrlAggBufSize) {
   bNeedToAct = 1;
   pBtCoexist->btInfo.bPreBtCtrlAggBufSize = pBtCoexist->btInfo.bBtCtrlAggBufSize;
  }

  if (pBtCoexist->btInfo.bBtCtrlAggBufSize) {
   if (pBtCoexist->btInfo.preAggBufSize !=
    pBtCoexist->btInfo.aggBufSize){
    bNeedToAct = 1;
   }
   pBtCoexist->btInfo.preAggBufSize = pBtCoexist->btInfo.aggBufSize;
  }

  if (bNeedToAct) {
   rtw_btcoex_RejectApAggregatedPacket(padapter, 1);
   rtw_btcoex_RejectApAggregatedPacket(padapter, 0);
  }
 }
}
