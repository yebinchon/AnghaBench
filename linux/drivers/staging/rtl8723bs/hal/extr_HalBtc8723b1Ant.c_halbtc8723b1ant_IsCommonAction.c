
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ btStatus; } ;
struct TYPE_6__ {int (* fBtcGet ) (TYPE_1__*,int ,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE ;
 TYPE_4__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
{
 bool bCommon = 0, bWifiConnected = 0, bWifiBusy = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);

 if (
  !bWifiConnected &&
  BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus
 ) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], Wifi non connected-idle + BT non connected-idle!!\n")
  );



  bCommon = 1;
 } else if (
  bWifiConnected &&
  (BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus)
 ) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], Wifi connected + BT non connected-idle!!\n")
  );



  bCommon = 1;
 } else if (
  !bWifiConnected &&
  (BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus)
 ) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], Wifi non connected-idle + BT connected-idle!!\n")
  );



  bCommon = 1;
 } else if (
  bWifiConnected &&
  (BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE == pCoexDm->btStatus)
 ) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Wifi connected + BT connected-idle!!\n"));



  bCommon = 1;
 } else if (
  !bWifiConnected &&
  (BT_8723B_1ANT_BT_STATUS_CONNECTED_IDLE != pCoexDm->btStatus)
 ) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], Wifi non connected-idle + BT Busy!!\n")
  );



  bCommon = 1;
 } else {
  if (bWifiBusy) {
   BTC_PRINT(
    BTC_MSG_ALGORITHM,
    ALGO_TRACE,
    ("[BTCoex], Wifi Connected-Busy + BT Busy!!\n")
   );
  } else {
   BTC_PRINT(
    BTC_MSG_ALGORITHM,
    ALGO_TRACE,
    ("[BTCoex], Wifi Connected-Idle + BT Busy!!\n")
   );
  }

  bCommon = 0;
 }

 return bCommon;
}
