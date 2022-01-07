
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ curBtDecPwrLvl; scalar_t__ preBtDecPwrLvl; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_FW ;
 int ALGO_TRACE_FW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetFwDecBtPwr (int ,scalar_t__) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_DecBtPwr(
 PBTC_COEXIST pBtCoexist, bool bForceExec, u8 decBtPwrLvl
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW,
  (
   "[BTCoex], %s Dec BT power level = %d\n",
   (bForceExec ? "force to" : ""),
   decBtPwrLvl
  )
 );
 pCoexDm->curBtDecPwrLvl = decBtPwrLvl;

 if (!bForceExec) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_FW_DETAIL,
   (
    "[BTCoex], preBtDecPwrLvl =%d, curBtDecPwrLvl =%d\n",
    pCoexDm->preBtDecPwrLvl,
    pCoexDm->curBtDecPwrLvl
   )
  );

  if (pCoexDm->preBtDecPwrLvl == pCoexDm->curBtDecPwrLvl)
   return;
 }
 halbtc8723b2ant_SetFwDecBtPwr(pBtCoexist, pCoexDm->curBtDecPwrLvl);

 pCoexDm->preBtDecPwrLvl = pCoexDm->curBtDecPwrLvl;
}
