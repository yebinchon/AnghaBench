
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bCurAgcTableEn; int bPreAgcTableEn; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_SW ;
 int ALGO_TRACE_SW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetAgcTable (int ,int) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_AgcTable(
 PBTC_COEXIST pBtCoexist, bool bForceExec, bool bAgcTableEn
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW,
  (
   "[BTCoex], %s %s Agc Table\n",
   (bForceExec ? "force to" : ""),
   (bAgcTableEn ? "Enable" : "Disable")
  )
 );
 pCoexDm->bCurAgcTableEn = bAgcTableEn;

 if (!bForceExec) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_SW_DETAIL,
   (
    "[BTCoex], bPreAgcTableEn =%d, bCurAgcTableEn =%d\n",
    pCoexDm->bPreAgcTableEn,
    pCoexDm->bCurAgcTableEn
   )
  );

  if (pCoexDm->bPreAgcTableEn == pCoexDm->bCurAgcTableEn)
   return;
 }
 halbtc8723b2ant_SetAgcTable(pBtCoexist, bAgcTableEn);

 pCoexDm->bPreAgcTableEn = pCoexDm->bCurAgcTableEn;
}
