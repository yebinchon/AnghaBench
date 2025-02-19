
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_24__ {scalar_t__ bBtDisabled; } ;
struct TYPE_25__ {int (* fBtcRead4Byte ) (TYPE_2__*,int) ;scalar_t__ (* fBtcRead1Byte ) (TYPE_2__*,int) ;int (* fBtcGet ) (TYPE_2__*,int ,int*) ;TYPE_1__ btInfo; scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
struct TYPE_23__ {int bWiFiIsHighPriTask; int nScanAPNum; scalar_t__ bC2hBtInquiryPage; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_GET_U1_AP_NUM ;
 int BTC_GET_U4_WIFI_LINK_STATUS ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BTC_SCAN_FINISH ;
 scalar_t__ BTC_SCAN_START ;
 int FORCE_EXEC ;
 int INTF_NOTIFY ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_ActionBtInquiry (TYPE_2__*) ;
 int halbtc8723b1ant_ActionHs (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiConnected (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiConnectedScan (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiMultiPort (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiNotConnected (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiNotConnectedScan (TYPE_2__*) ;
 int halbtc8723b1ant_LimitedRx (TYPE_2__*,int ,int,int,scalar_t__) ;
 int halbtc8723b1ant_LimitedTx (TYPE_2__*,int ,int ,int ,int ,int ) ;
 int halbtc8723b1ant_PsTdma (TYPE_2__*,int ,int,int) ;
 int halbtc8723b1ant_QueryBtInfo (TYPE_2__*) ;
 TYPE_10__* pCoexSta ;
 int stub1 (TYPE_2__*,int) ;
 scalar_t__ stub2 (TYPE_2__*,int) ;
 scalar_t__ stub3 (TYPE_2__*,int) ;
 int stub4 (TYPE_2__*,int ,int*) ;
 int stub5 (TYPE_2__*,int ,int*) ;
 int stub6 (TYPE_2__*,int ,int*) ;
 int stub7 (TYPE_2__*,int ,int*) ;

void EXhalbtc8723b1ant_ScanNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 bool bWifiConnected = 0, bBtHsOn = 0;
 u32 wifiLinkStatus = 0;
 u32 numOfWifiLink = 0;
 bool bBtCtrlAggBufSize = 0;
 u8 aggBufSize = 5;

 u8 u1Tmpa, u1Tmpb;
 u32 u4Tmp;

 if (pBtCoexist->bManualControl || pBtCoexist->bStopCoexDm)
  return;

 if (BTC_SCAN_START == type) {
  pCoexSta->bWiFiIsHighPriTask = 1;
  BTC_PRINT(
   BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN START notify\n")
  );

  halbtc8723b1ant_PsTdma(pBtCoexist, FORCE_EXEC, 0, 8);
  u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x948);
  u1Tmpa = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x765);
  u1Tmpb = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x67);


  BTC_PRINT(
   BTC_MSG_INTERFACE,
   INTF_NOTIFY,
   (
    "[BTCoex], 0x948 = 0x%x, 0x765 = 0x%x, 0x67 = 0x%x\n",
    u4Tmp,
    u1Tmpa,
    u1Tmpb
   )
  );
 } else {
  pCoexSta->bWiFiIsHighPriTask = 0;
  BTC_PRINT(
   BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], SCAN FINISH notify\n")
  );

  pBtCoexist->fBtcGet(
   pBtCoexist, BTC_GET_U1_AP_NUM, &pCoexSta->nScanAPNum
  );
 }

 if (pBtCoexist->btInfo.bBtDisabled)
  return;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);

 halbtc8723b1ant_QueryBtInfo(pBtCoexist);

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus);
 numOfWifiLink = wifiLinkStatus>>16;

 if (numOfWifiLink >= 2) {
  halbtc8723b1ant_LimitedTx(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
  halbtc8723b1ant_LimitedRx(
   pBtCoexist, NORMAL_EXEC, 0, bBtCtrlAggBufSize, aggBufSize
  );
  halbtc8723b1ant_ActionWifiMultiPort(pBtCoexist);
  return;
 }

 if (pCoexSta->bC2hBtInquiryPage) {
  halbtc8723b1ant_ActionBtInquiry(pBtCoexist);
  return;
 } else if (bBtHsOn) {
  halbtc8723b1ant_ActionHs(pBtCoexist);
  return;
 }

 if (BTC_SCAN_START == type) {

  if (!bWifiConnected)
   halbtc8723b1ant_ActionWifiNotConnectedScan(pBtCoexist);
  else
   halbtc8723b1ant_ActionWifiConnectedScan(pBtCoexist);
 } else if (BTC_SCAN_FINISH == type) {

  if (!bWifiConnected)
   halbtc8723b1ant_ActionWifiNotConnected(pBtCoexist);
  else
   halbtc8723b1ant_ActionWifiConnected(pBtCoexist);
 }
}
