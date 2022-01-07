
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bPanExist; scalar_t__ bA2dpExist; scalar_t__ bHidExist; scalar_t__ bScoExist; } ;
struct TYPE_7__ {TYPE_2__ btLinkInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BT_LINK_INFO ;


 int BTC_PS_WIFI_NATIVE ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b1ant_PowerSaveState (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_ActionWifiConnectedSpecialPacket(
 PBTC_COEXIST pBtCoexist
)
{
 PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;

 halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);


 if (
  (pBtLinkInfo->bScoExist) ||
  (pBtLinkInfo->bHidExist) ||
  (pBtLinkInfo->bA2dpExist)
 ) {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 32);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 } else if (pBtLinkInfo->bPanExist) {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 20);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 } else {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 8);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
 }
}
