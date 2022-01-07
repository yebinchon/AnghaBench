
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ curFwDacSwingLvl; scalar_t__ preFwDacSwingLvl; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_FW ;
 int ALGO_TRACE_FW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetFwDacSwingLevel (int ,scalar_t__) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_FwDacSwingLvl(
 PBTC_COEXIST pBtCoexist, bool bForceExec, u8 fwDacSwingLvl
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW,
  (
   "[BTCoex], %s set FW Dac Swing level = %d\n",
   (bForceExec ? "force to" : ""),
   fwDacSwingLvl
  )
 );
 pCoexDm->curFwDacSwingLvl = fwDacSwingLvl;

 if (!bForceExec) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_FW_DETAIL,
   (
    "[BTCoex], preFwDacSwingLvl =%d, curFwDacSwingLvl =%d\n",
    pCoexDm->preFwDacSwingLvl,
    pCoexDm->curFwDacSwingLvl
   )
  );

  if (pCoexDm->preFwDacSwingLvl == pCoexDm->curFwDacSwingLvl)
   return;
 }

 halbtc8723b2ant_SetFwDacSwingLevel(pBtCoexist, pCoexDm->curFwDacSwingLvl);

 pCoexDm->preFwDacSwingLvl = pCoexDm->curFwDacSwingLvl;
}
