
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bCurIgnoreWlanAct; int bPreIgnoreWlanAct; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_FW ;
 int ALGO_TRACE_FW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetFwIgnoreWlanAct (int ,int) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_IgnoreWlanAct(
 PBTC_COEXIST pBtCoexist, bool bForceExec, bool bEnable
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW,
  (
   "[BTCoex], %s turn Ignore WlanAct %s\n",
   (bForceExec ? "force to" : ""),
   (bEnable ? "ON" : "OFF")
  )
 );

 pCoexDm->bCurIgnoreWlanAct = bEnable;

 if (!bForceExec) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_FW_DETAIL, ("[BTCoex], bPreIgnoreWlanAct = %d, bCurIgnoreWlanAct = %d!!\n",
   pCoexDm->bPreIgnoreWlanAct, pCoexDm->bCurIgnoreWlanAct));

  if (pCoexDm->bPreIgnoreWlanAct == pCoexDm->bCurIgnoreWlanAct)
   return;
 }
 halbtc8723b2ant_SetFwIgnoreWlanAct(pBtCoexist, bEnable);

 pCoexDm->bPreIgnoreWlanAct = pCoexDm->bCurIgnoreWlanAct;
}
