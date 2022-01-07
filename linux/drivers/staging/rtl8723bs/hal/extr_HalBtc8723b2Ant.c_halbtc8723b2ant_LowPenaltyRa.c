
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bCurLowPenaltyRa; int bPreLowPenaltyRa; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_SW ;
 int ALGO_TRACE_SW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetSwPenaltyTxRateAdaptive (int ,int) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_LowPenaltyRa(
 PBTC_COEXIST pBtCoexist, bool bForceExec, bool bLowPenaltyRa
)
{

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW,
  (
   "[BTCoex], %s turn LowPenaltyRA = %s\n",
   (bForceExec ? "force to" : ""),
   (bLowPenaltyRa ? "ON" : "OFF")
  )
 );
 pCoexDm->bCurLowPenaltyRa = bLowPenaltyRa;

 if (!bForceExec) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_SW_DETAIL,
   (
    "[BTCoex], bPreLowPenaltyRa =%d, bCurLowPenaltyRa =%d\n",
    pCoexDm->bPreLowPenaltyRa,
    pCoexDm->bCurLowPenaltyRa
   )
  );

  if (pCoexDm->bPreLowPenaltyRa == pCoexDm->bCurLowPenaltyRa)
   return;
 }
 halbtc8723b2ant_SetSwPenaltyTxRateAdaptive(pBtCoexist, pCoexDm->bCurLowPenaltyRa);

 pCoexDm->bPreLowPenaltyRa = pCoexDm->bCurLowPenaltyRa;
}
