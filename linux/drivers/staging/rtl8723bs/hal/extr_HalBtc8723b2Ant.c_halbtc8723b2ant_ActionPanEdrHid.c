
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_15__ {int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;int (* fBtcGet ) (TYPE_1__*,int ,scalar_t__*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_GET_U4_WIFI_BW ;
 int BTC_RF_A ;
 scalar_t__ BTC_RSSI_HIGH (scalar_t__) ;
 scalar_t__ BTC_RSSI_STATE_HIGH ;
 scalar_t__ BTC_RSSI_STATE_STAY_HIGH ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 int NORMAL_EXEC ;
 scalar_t__ halbtc8723b2ant_BtRssiState (int,int,int ) ;
 int halbtc8723b2ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_DecBtPwr (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_FwDacSwingLvl (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_LimitedRx (TYPE_1__*,int ,int,int,int) ;
 int halbtc8723b2ant_SwMechanism1 (TYPE_1__*,int,int,int,int) ;
 int halbtc8723b2ant_SwMechanism2 (TYPE_1__*,int,int,int,int) ;
 int halbtc8723b2ant_TdmaDurationAdjust (TYPE_1__*,int,int,int) ;
 scalar_t__ halbtc8723b2ant_WifiRssiState (TYPE_1__*,int ,int,int,int ) ;
 int stub1 (TYPE_1__*,int ,scalar_t__*) ;
 int stub2 (TYPE_1__*,int ,int,int,int) ;
 int stub3 (TYPE_1__*,int ,int,int,int) ;
 int stub4 (TYPE_1__*,int ,int,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_ActionPanEdrHid(PBTC_COEXIST pBtCoexist)
{
 u8 wifiRssiState, btRssiState;
 u32 wifiBw;

 wifiRssiState = halbtc8723b2ant_WifiRssiState(pBtCoexist, 0, 2, 15, 0);
 btRssiState = halbtc8723b2ant_BtRssiState(2, 29, 0);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);

 halbtc8723b2ant_LimitedRx(pBtCoexist, NORMAL_EXEC, 0, 0, 0x8);

 if (BTC_RSSI_HIGH(btRssiState))
  halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 2);
 else
  halbtc8723b2ant_DecBtPwr(pBtCoexist, NORMAL_EXEC, 0);

 if (
  (btRssiState == BTC_RSSI_STATE_HIGH) ||
  (btRssiState == BTC_RSSI_STATE_STAY_HIGH)
 ) {
  if (BTC_WIFI_BW_HT40 == wifiBw) {
   halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 3);
   halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 11);
   pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x780);
  } else {
   halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 6);
   halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
   pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
  }
  halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, 1, 0, 2);
 } else {
  halbtc8723b2ant_FwDacSwingLvl(pBtCoexist, NORMAL_EXEC, 6);
  halbtc8723b2ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 11);
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
  halbtc8723b2ant_TdmaDurationAdjust(pBtCoexist, 1, 1, 2);
 }


 if (BTC_WIFI_BW_HT40 == wifiBw) {
  if (
   (wifiRssiState == BTC_RSSI_STATE_HIGH) ||
   (wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
  ) {
   halbtc8723b2ant_SwMechanism1(pBtCoexist, 1, 1, 0, 0);
   halbtc8723b2ant_SwMechanism2(pBtCoexist, 1, 0, 0, 0x18);
  } else {
   halbtc8723b2ant_SwMechanism1(pBtCoexist, 1, 1, 0, 0);
   halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);
  }
 } else {
  if (
   (wifiRssiState == BTC_RSSI_STATE_HIGH) ||
   (wifiRssiState == BTC_RSSI_STATE_STAY_HIGH)
  ) {
   halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 1, 0, 0);
   halbtc8723b2ant_SwMechanism2(pBtCoexist, 1, 0, 0, 0x18);
  } else {
   halbtc8723b2ant_SwMechanism1(pBtCoexist, 0, 1, 0, 0);
   halbtc8723b2ant_SwMechanism2(pBtCoexist, 0, 0, 0, 0x18);
  }
 }
}
