
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bCurRfRxLpfShrink; int bPreRfRxLpfShrink; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_SW ;
 int ALGO_TRACE_SW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetSwRfRxLpfCorner (int ,int) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_RfShrink(
 PBTC_COEXIST pBtCoexist, bool bForceExec, bool bRxRfShrinkOn
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW,
  (
   "[BTCoex], %s turn Rx RF Shrink = %s\n",
   (bForceExec ? "force to" : ""),
   (bRxRfShrinkOn ? "ON" : "OFF")
  )
 );
 pCoexDm->bCurRfRxLpfShrink = bRxRfShrinkOn;

 if (!bForceExec) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_SW_DETAIL,
   (
    "[BTCoex], bPreRfRxLpfShrink =%d, bCurRfRxLpfShrink =%d\n",
    pCoexDm->bPreRfRxLpfShrink,
    pCoexDm->bCurRfRxLpfShrink
   )
  );

  if (pCoexDm->bPreRfRxLpfShrink == pCoexDm->bCurRfRxLpfShrink)
   return;
 }
 halbtc8723b2ant_SetSwRfRxLpfCorner(pBtCoexist, pCoexDm->bCurRfRxLpfShrink);

 pCoexDm->bPreRfRxLpfShrink = pCoexDm->bCurRfRxLpfShrink;
}
