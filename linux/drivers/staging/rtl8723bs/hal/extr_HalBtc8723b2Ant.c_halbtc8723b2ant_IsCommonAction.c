
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;


typedef int u8 ;
struct TYPE_23__ {int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;int (* fBtcSet ) (TYPE_1__*,int ,int*) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;} ;
struct TYPE_22__ {scalar_t__ btStatus; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_RF_A ;
 scalar_t__ BTC_RSSI_HIGH (int ) ;
 int BTC_RSSI_STATE_HIGH ;
 int BTC_SET_ACT_DISABLE_LOW_POWER ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE ;
 int NORMAL_EXEC ;
 int halbtc8723b2ant_BtRssiState (int,int,int ) ;
 int halbtc8723b2ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_DecBtPwr (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_FwDacSwingLvl (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_LimitedRx (TYPE_1__*,int ,int,int,int) ;
 int halbtc8723b2ant_PsTdma (TYPE_1__*,int ,int,int) ;
 int halbtc8723b2ant_SwMechanism1 (TYPE_1__*,int,int,int,int) ;
 int halbtc8723b2ant_SwMechanism2 (TYPE_1__*,int,int,int,int) ;
 TYPE_13__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub10 (TYPE_1__*,int ,int*) ;
 int stub11 (TYPE_1__*,int ,int,int,int) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int ,int*) ;
 int stub5 (TYPE_1__*,int ,int,int,int) ;
 int stub6 (TYPE_1__*,int ,int*) ;
 int stub7 (TYPE_1__*,int ,int,int,int) ;
 int stub8 (TYPE_1__*,int ,int*) ;
 int stub9 (TYPE_1__*,int ,int,int,int) ;

__attribute__((used)) static bool halbtc8723b2ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
{
 u8 btRssiState = BTC_RSSI_STATE_HIGH;
 bool bCommon = 0, bWifiConnected = 0, bWifiBusy = 0;
 bool bBtHsOn = 0, bLowPwrDisable = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);

 if (!bWifiConnected) {
  bLowPwrDisable = 0;
  pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);
  halbtc8723b2ant_LimitedRx(pBtCoexist, NORMAL_EXEC, 0, 0, 0x8);

  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi non-connected idle!!\n"));

  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
  halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
  halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 1);
  halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 6);
  halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);

  halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 0, 0, 0);
  halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);

  bCommon = 1;
 } else {
  if (BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus) {
   bLowPwrDisable = 0;
   pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);
   halbtc8723b2ant_LimitedRx(pBtCoexist, NORMAL_EXEC, 0, 0, 0x8);

   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi connected + BT non connected-idle!!\n"));

   pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
   halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
   halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 1);
   halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 0xb);
   halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);

   halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 0, 0, 0);
   halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);

   bCommon = 1;
  } else if (BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus) {
   bLowPwrDisable = 1;
   pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);

   if (bBtHsOn)
    return 0;

   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi connected + BT connected-idle!!\n"));
   halbtc8723b2ant_LimitedRx(pBtCoexist, NORMAL_EXEC, 0, 0, 0x8);

   pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
   halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
   halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 1);
   halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 0xb);
   halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);

   halbtc8723b2ant_SwMechanism1(pBtCoexist, 1, 0, 0, 0);
   halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);

   bCommon = 1;
  } else {
   bLowPwrDisable = 1;
   pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_ACT_DISABLE_LOW_POWER, &bLowPwrDisable);

   if (bWifiBusy) {
    BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi Connected-Busy + BT Busy!!\n"));
    bCommon = 0;
   } else {
    if (bBtHsOn)
     return 0;

    BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi Connected-Idle + BT Busy!!\n"));
    btRssiState = halbtc8723b2ant_BtRssiState(2, 29, 0);
    halbtc8723b2ant_LimitedRx(pBtCoexist, NORMAL_EXEC, 0, 0, 0x8);

    pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
    halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
    halbtc8723b2ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 21);
    halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 0xb);

    if (BTC_RSSI_HIGH(btRssiState))
     halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 2);
    else
     halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);

    halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 0, 0, 0);
    halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);
    bCommon = 1;
   }
  }
 }

 return bCommon;
}
