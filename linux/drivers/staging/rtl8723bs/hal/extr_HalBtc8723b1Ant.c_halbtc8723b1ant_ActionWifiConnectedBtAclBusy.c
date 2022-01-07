
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_13__ {int bAutoTdmaAdjust; } ;
struct TYPE_12__ {int lowPriorityRx; } ;
struct TYPE_11__ {int bSlaveRole; scalar_t__ bPanExist; scalar_t__ bA2dpExist; scalar_t__ bHidExist; scalar_t__ bPanOnly; scalar_t__ bA2dpOnly; scalar_t__ bHidOnly; } ;
struct TYPE_10__ {TYPE_2__ btLinkInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BT_LINK_INFO ;


 scalar_t__ BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_ActionBtScoHidOnlyBusy (TYPE_1__*,scalar_t__) ;
 scalar_t__ halbtc8723b1ant_BtRssiState (int,int,int ) ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_TdmaDurationAdjustForAcl (TYPE_1__*,scalar_t__) ;
 TYPE_4__* pCoexDm ;
 TYPE_3__* pCoexSta ;

__attribute__((used)) static void halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
 PBTC_COEXIST pBtCoexist, u8 wifiStatus
)
{
 u8 btRssiState;

 PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
 btRssiState = halbtc8723b1ant_BtRssiState(2, 28, 0);

 if ((pCoexSta->lowPriorityRx >= 1000) && (pCoexSta->lowPriorityRx != 65535))
  pBtLinkInfo->bSlaveRole = 1;
 else
  pBtLinkInfo->bSlaveRole = 0;

 if (pBtLinkInfo->bHidOnly) {
  halbtc8723b1ant_ActionBtScoHidOnlyBusy(pBtCoexist, wifiStatus);
  pCoexDm->bAutoTdmaAdjust = 0;
  return;
 } else if (pBtLinkInfo->bA2dpOnly) {
  if (BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE == wifiStatus) {
   halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 32);
   halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
   pCoexDm->bAutoTdmaAdjust = 0;
  } else {
   halbtc8723b1ant_TdmaDurationAdjustForAcl(pBtCoexist, wifiStatus);
   halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
   pCoexDm->bAutoTdmaAdjust = 1;
  }
 } else if (pBtLinkInfo->bHidExist && pBtLinkInfo->bA2dpExist) {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 14);
  pCoexDm->bAutoTdmaAdjust = 0;

  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
 } else if (
  pBtLinkInfo->bPanOnly ||
  (pBtLinkInfo->bHidExist && pBtLinkInfo->bPanExist)
 ) {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 3);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
  pCoexDm->bAutoTdmaAdjust = 0;
 } else if (
  (pBtLinkInfo->bA2dpExist && pBtLinkInfo->bPanExist) ||
  (pBtLinkInfo->bHidExist && pBtLinkInfo->bA2dpExist && pBtLinkInfo->bPanExist)
 ) {
  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 13);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
  pCoexDm->bAutoTdmaAdjust = 0;
 } else {

  halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 1, 32);
  halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 4);
  pCoexDm->bAutoTdmaAdjust = 0;
 }
}
