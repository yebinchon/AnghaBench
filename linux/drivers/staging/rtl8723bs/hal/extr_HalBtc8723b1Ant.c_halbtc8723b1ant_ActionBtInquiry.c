
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int bWiFiIsHighPriTask; } ;
struct TYPE_13__ {scalar_t__ bPanExist; scalar_t__ bA2dpExist; scalar_t__ bHidExist; scalar_t__ bScoExist; } ;
struct TYPE_12__ {int (* fBtcSet ) (TYPE_1__*,int ,int*) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BT_LINK_INFO ;


 int BTC_GET_BL_WIFI_AP_MODE_ENABLE ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_PS_WIFI_NATIVE ;
 int BTC_SET_BL_BT_TRAFFIC_BUSY ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b1ant_PowerSaveState (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int) ;
 TYPE_7__* pCoexSta ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_ActionBtInquiry(PBTC_COEXIST pBtCoexist)
{
 PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
 bool bWifiConnected = 0;
 bool bApEnable = 0;
 bool bWifiBusy = 0;
 bool bBtBusy = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);
 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_TRAFFIC_BUSY, &bBtBusy);

 if (!bWifiConnected && !pCoexSta->bWiFiIsHighPriTask) {
  halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 8);

  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 0);
 } else if (
  pBtLinkInfo->bScoExist ||
  pBtLinkInfo->bHidExist ||
  pBtLinkInfo->bA2dpExist
 ) {

  halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 32);

  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 } else if (pBtLinkInfo->bPanExist || bWifiBusy) {
  halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 20);

  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 } else {
  halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 8);

  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
 }
}
