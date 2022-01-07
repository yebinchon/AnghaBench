
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int bCurDacSwingOn; scalar_t__ curDacSwingLvl; int bPreDacSwingOn; scalar_t__ preDacSwingLvl; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE_SW ;
 int ALGO_TRACE_SW_DETAIL ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_SetSwFullTimeDacSwing (int ,int,scalar_t__) ;
 int mdelay (int) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b2ant_DacSwing(
 PBTC_COEXIST pBtCoexist,
 bool bForceExec,
 bool bDacSwingOn,
 u32 dacSwingLvl
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW,
  (
   "[BTCoex], %s turn DacSwing =%s, dacSwingLvl = 0x%x\n",
   (bForceExec ? "force to" : ""),
   (bDacSwingOn ? "ON" : "OFF"),
   dacSwingLvl
  )
 );
 pCoexDm->bCurDacSwingOn = bDacSwingOn;
 pCoexDm->curDacSwingLvl = dacSwingLvl;

 if (!bForceExec) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_SW_DETAIL,
   (
    "[BTCoex], bPreDacSwingOn =%d, preDacSwingLvl = 0x%x, bCurDacSwingOn =%d, curDacSwingLvl = 0x%x\n",
    pCoexDm->bPreDacSwingOn,
    pCoexDm->preDacSwingLvl,
    pCoexDm->bCurDacSwingOn,
    pCoexDm->curDacSwingLvl
   )
  );

  if ((pCoexDm->bPreDacSwingOn == pCoexDm->bCurDacSwingOn) &&
   (pCoexDm->preDacSwingLvl == pCoexDm->curDacSwingLvl))
   return;
 }
 mdelay(30);
 halbtc8723b2ant_SetSwFullTimeDacSwing(pBtCoexist, bDacSwingOn, dacSwingLvl);

 pCoexDm->bPreDacSwingOn = pCoexDm->bCurDacSwingOn;
 pCoexDm->preDacSwingLvl = pCoexDm->curDacSwingLvl;
}
