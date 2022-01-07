
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ bScoExist; } ;
struct TYPE_7__ {int (* fBtcGet ) (TYPE_1__*,int ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BT_LINK_INFO ;


 int BTC_GET_BL_WIFI_CONNECTED ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int) ;
 int stub1 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_ActionBtScoHidOnlyBusy(
 PBTC_COEXIST pBtCoexist, u8 wifiStatus
)
{
 PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
 bool bWifiConnected = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);



 if (pBtLinkInfo->bScoExist) {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 5);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 5);
 } else {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 6);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 5);
 }
}
