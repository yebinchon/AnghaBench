
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_20__ {scalar_t__ nArpCnt; } ;
struct TYPE_19__ {int bWiFiIsHighPriTask; scalar_t__ bC2hBtInquiryPage; } ;
struct TYPE_17__ {scalar_t__ bBtDisabled; } ;
struct TYPE_18__ {int (* fBtcGet ) (TYPE_2__*,int ,int*) ;TYPE_1__ btInfo; scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 scalar_t__ BTC_ASSOCIATE_FINISH ;
 scalar_t__ BTC_ASSOCIATE_START ;
 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_U4_WIFI_LINK_STATUS ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_ActionBtInquiry (TYPE_2__*) ;
 int halbtc8723b1ant_ActionHs (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiConnected (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiMultiPort (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiNotConnected (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiNotConnectedAssoAuth (TYPE_2__*) ;
 int halbtc8723b1ant_LimitedRx (TYPE_2__*,int ,int,int,scalar_t__) ;
 int halbtc8723b1ant_LimitedTx (TYPE_2__*,int ,int ,int ,int ,int ) ;
 TYPE_7__* pCoexDm ;
 TYPE_6__* pCoexSta ;
 int stub1 (TYPE_2__*,int ,int*) ;
 int stub2 (TYPE_2__*,int ,int*) ;
 int stub3 (TYPE_2__*,int ,int*) ;

void EXhalbtc8723b1ant_ConnectNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 bool bWifiConnected = 0, bBtHsOn = 0;
 u32 wifiLinkStatus = 0;
 u32 numOfWifiLink = 0;
 bool bBtCtrlAggBufSize = 0;
 u8 aggBufSize = 5;

 if (
  pBtCoexist->bManualControl ||
  pBtCoexist->bStopCoexDm ||
  pBtCoexist->btInfo.bBtDisabled
 )
  return;

 if (BTC_ASSOCIATE_START == type) {
  pCoexSta->bWiFiIsHighPriTask = 1;
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT START notify\n"));
   pCoexDm->nArpCnt = 0;
 } else {
  pCoexSta->bWiFiIsHighPriTask = 0;
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], CONNECT FINISH notify\n"));

 }

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus);
 numOfWifiLink = wifiLinkStatus>>16;
 if (numOfWifiLink >= 2) {
  halbtc8723b1ant_LimitedTx(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
  halbtc8723b1ant_LimitedRx(pBtCoexist, NORMAL_EXEC, 0, bBtCtrlAggBufSize, aggBufSize);
  halbtc8723b1ant_ActionWifiMultiPort(pBtCoexist);
  return;
 }

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
 if (pCoexSta->bC2hBtInquiryPage) {
  halbtc8723b1ant_ActionBtInquiry(pBtCoexist);
  return;
 } else if (bBtHsOn) {
  halbtc8723b1ant_ActionHs(pBtCoexist);
  return;
 }

 if (BTC_ASSOCIATE_START == type) {

  halbtc8723b1ant_ActionWifiNotConnectedAssoAuth(pBtCoexist);
 } else if (BTC_ASSOCIATE_FINISH == type) {


  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
  if (!bWifiConnected)
   halbtc8723b1ant_ActionWifiNotConnected(pBtCoexist);
  else
   halbtc8723b1ant_ActionWifiConnected(pBtCoexist);
 }
}
