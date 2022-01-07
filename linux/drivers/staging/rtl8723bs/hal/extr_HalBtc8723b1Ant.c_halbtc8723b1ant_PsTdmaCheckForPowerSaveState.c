
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int (* fBtcGet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_GET_U1_LPS_MODE ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int ) ;
 int stub1 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_PsTdmaCheckForPowerSaveState(
 PBTC_COEXIST pBtCoexist, bool bNewPsState
)
{
 u8 lpsMode = 0x0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_LPS_MODE, &lpsMode);

 if (lpsMode) {
  if (bNewPsState) {

  } else
   halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 0);
 } else {
  if (bNewPsState)
   halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 0);
  else {

  }
 }
}
