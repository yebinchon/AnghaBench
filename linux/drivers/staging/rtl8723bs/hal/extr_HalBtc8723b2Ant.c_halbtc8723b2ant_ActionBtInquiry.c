
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int bNeedRecover0x948; int backup0x948; } ;
struct TYPE_14__ {int (* fBtcRead4Byte ) (TYPE_1__*,int) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;int (* fBtcSet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_ANT_WIFI_AT_AUX ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int halbtc8723b2ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_DecBtPwr (TYPE_1__*,int ,int ) ;
 int halbtc8723b2ant_FwDacSwingLvl (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_PsTdma (TYPE_1__*,int ,int,int) ;
 int halbtc8723b2ant_SetAntPath (TYPE_1__*,int ,int,int) ;
 int halbtc8723b2ant_SwMechanism1 (TYPE_1__*,int,int,int,int) ;
 int halbtc8723b2ant_SwMechanism2 (TYPE_1__*,int,int,int,int) ;
 TYPE_5__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int) ;

__attribute__((used)) static void halbtc8723b2ant_ActionBtInquiry(PBTC_COEXIST pBtCoexist)
{
 bool bWifiConnected = 0;
 bool bLowPwrDisable = 1;

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);

 if (bWifiConnected) {
  halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
  halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 3);
 } else {
  halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
  halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 1);
 }

 halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, FORCE_EXEC, 6);
 halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);

 halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 0, 0, 0);
 halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);

 pCoexDm->bNeedRecover0x948 = 1;
 pCoexDm->backup0x948 = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x948);

 halbtc8723b2ant_SetAntPath(pBtCoexist, BTC_ANT_WIFI_AT_AUX, 0, 0);
}
