
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bCurLowPenaltyRa; int bPreLowPenaltyRa; } ;
typedef int PBTC_COEXIST ;


 int halbtc8723b1ant_SetSwPenaltyTxRateAdaptive (int ,int) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b1ant_LowPenaltyRa(
 PBTC_COEXIST pBtCoexist, bool bForceExec, bool bLowPenaltyRa
)
{
 pCoexDm->bCurLowPenaltyRa = bLowPenaltyRa;

 if (!bForceExec) {
  if (pCoexDm->bPreLowPenaltyRa == pCoexDm->bCurLowPenaltyRa)
   return;
 }
 halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
  pBtCoexist, pCoexDm->bCurLowPenaltyRa
 );

 pCoexDm->bPreLowPenaltyRa = pCoexDm->bCurLowPenaltyRa;
}
