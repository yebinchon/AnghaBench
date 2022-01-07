
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int s32 ;
struct TYPE_4__ {int curPsTdma; int psTdmaDuAdjType; int bAutoTdmaAdjust; } ;
struct TYPE_3__ {scalar_t__ btRetryCnt; scalar_t__ btInfoExt; int lowPriorityTx; int lowPriorityRx; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_FW ;
 int ALGO_TRACE_FW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN ;
 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT ;
 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN ;
 scalar_t__ BT_INFO_8723B_1ANT_A2DP_BASIC_RATE (scalar_t__) ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_PsTdma (int ,int ,int,int) ;
 TYPE_2__* pCoexDm ;
 TYPE_1__* pCoexSta ;

__attribute__((used)) static void halbtc8723b1ant_TdmaDurationAdjustForAcl(
 PBTC_COEXIST pBtCoexist, u8 wifiStatus
)
{
 static s32 up, dn, m, n, WaitCount;
 s32 result;
 u8 retryCount = 0, btInfoExt;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW,
  ("[BTCoex], TdmaDurationAdjustForAcl()\n")
 );

 if (
  (BT_8723B_1ANT_WIFI_STATUS_NON_CONNECTED_ASSO_AUTH_SCAN == wifiStatus) ||
  (BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SCAN == wifiStatus) ||
  (BT_8723B_1ANT_WIFI_STATUS_CONNECTED_SPECIAL_PKT == wifiStatus)
 ) {
  if (
   pCoexDm->curPsTdma != 1 &&
   pCoexDm->curPsTdma != 2 &&
   pCoexDm->curPsTdma != 3 &&
   pCoexDm->curPsTdma != 9
  ) {
   halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 9);
   pCoexDm->psTdmaDuAdjType = 9;

   up = 0;
   dn = 0;
   m = 1;
   n = 3;
   result = 0;
   WaitCount = 0;
  }
  return;
 }

 if (!pCoexDm->bAutoTdmaAdjust) {
  pCoexDm->bAutoTdmaAdjust = 1;
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_FW_DETAIL,
   ("[BTCoex], first run TdmaDurationAdjust()!!\n")
  );

  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 2);
  pCoexDm->psTdmaDuAdjType = 2;

  up = 0;
  dn = 0;
  m = 1;
  n = 3;
  result = 0;
  WaitCount = 0;
 } else {

  retryCount = pCoexSta->btRetryCnt;
  btInfoExt = pCoexSta->btInfoExt;




  if (pCoexSta->lowPriorityTx > 1050 || pCoexSta->lowPriorityRx > 1250)
   retryCount++;

  result = 0;
  WaitCount++;

  if (retryCount == 0) {
   up++;
   dn--;

   if (dn <= 0)
    dn = 0;

   if (up >= n) {
    WaitCount = 0;
    n = 3;
    up = 0;
    dn = 0;
    result = 1;
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE_FW_DETAIL,
     ("[BTCoex], Increase wifi duration!!\n")
    );
   }
  } else if (retryCount <= 3) {
   up--;
   dn++;

   if (up <= 0)
    up = 0;

   if (dn == 2) {
    if (WaitCount <= 2)
     m++;
    else
     m = 1;

    if (m >= 20)
     m = 20;

    n = 3*m;
    up = 0;
    dn = 0;
    WaitCount = 0;
    result = -1;
    BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], Decrease wifi duration for retryCounter<3!!\n"));
   }
  } else {
   if (WaitCount == 1)
    m++;
   else
    m = 1;

   if (m >= 20)
    m = 20;

   n = 3*m;
   up = 0;
   dn = 0;
   WaitCount = 0;
   result = -1;
   BTC_PRINT(
    BTC_MSG_ALGORITHM,
    ALGO_TRACE_FW_DETAIL,
    ("[BTCoex], Decrease wifi duration for retryCounter>3!!\n")
   );
  }

  if (result == -1) {
   if (
    BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(btInfoExt) &&
    ((pCoexDm->curPsTdma == 1) || (pCoexDm->curPsTdma == 2))
   ) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 9);
    pCoexDm->psTdmaDuAdjType = 9;
   } else if (pCoexDm->curPsTdma == 1) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 2);
    pCoexDm->psTdmaDuAdjType = 2;
   } else if (pCoexDm->curPsTdma == 2) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 9);
    pCoexDm->psTdmaDuAdjType = 9;
   } else if (pCoexDm->curPsTdma == 9) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 11);
    pCoexDm->psTdmaDuAdjType = 11;
   }
  } else if (result == 1) {
   if (
    BT_INFO_8723B_1ANT_A2DP_BASIC_RATE(btInfoExt) &&
    ((pCoexDm->curPsTdma == 1) || (pCoexDm->curPsTdma == 2))
   ) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 9);
    pCoexDm->psTdmaDuAdjType = 9;
   } else if (pCoexDm->curPsTdma == 11) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 9);
    pCoexDm->psTdmaDuAdjType = 9;
   } else if (pCoexDm->curPsTdma == 9) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 2);
    pCoexDm->psTdmaDuAdjType = 2;
   } else if (pCoexDm->curPsTdma == 2) {
    halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 1);
    pCoexDm->psTdmaDuAdjType = 1;
   }
  } else {
   BTC_PRINT(
    BTC_MSG_ALGORITHM,
    ALGO_TRACE_FW_DETAIL,
    (
     "[BTCoex], ********** TDMA(on, %d) **********\n",
     pCoexDm->curPsTdma
    )
   );
  }

  if (
   pCoexDm->curPsTdma != 1 &&
   pCoexDm->curPsTdma != 2 &&
   pCoexDm->curPsTdma != 9 &&
   pCoexDm->curPsTdma != 11
  )
   halbtc8723b1ant_PsTdma(
    pBtCoexist, NORMAL_EXEC, 1, pCoexDm->psTdmaDuAdjType
   );
 }
}
