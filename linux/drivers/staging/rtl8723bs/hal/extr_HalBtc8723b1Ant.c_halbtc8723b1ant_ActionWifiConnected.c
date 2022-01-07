
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_22__ {scalar_t__ nScanAPNum; int highPriorityTx; int highPriorityRx; int bHidExist; int bA2dpExist; int bPanExist; } ;
struct TYPE_20__ {scalar_t__ bA2dpOnly; int bHidOnly; } ;
struct TYPE_21__ {TYPE_1__ btLinkInfo; int (* fBtcGet ) (TYPE_2__*,int ,int*) ;} ;
struct TYPE_19__ {scalar_t__ btStatus; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_GET_BL_WIFI_4_WAY_PROGRESS ;
 int BTC_GET_BL_WIFI_AP_MODE_ENABLE ;
 int BTC_GET_BL_WIFI_BUSY ;
 int BTC_GET_BL_WIFI_LINK ;
 int BTC_GET_BL_WIFI_ROAM ;
 int BTC_GET_BL_WIFI_SCAN ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_PS_LPS_ON ;
 int BTC_PS_WIFI_NATIVE ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_BT_STATUS_SCO_BUSY ;
 scalar_t__ BT_8723B_1ANT_WIFI_NOISY_THRESH ;
 int BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY ;
 int BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_ActionBtScoHidOnlyBusy (TYPE_2__*,int ) ;
 int halbtc8723b1ant_ActionWifiConnectedBtAclBusy (TYPE_2__*,int ) ;
 int halbtc8723b1ant_ActionWifiConnectedScan (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiConnectedSpecialPacket (TYPE_2__*) ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_2__*,int ,int) ;
 int halbtc8723b1ant_PowerSaveState (TYPE_2__*,int ,int,int) ;
 int halbtc8723b1ant_PsTdma (TYPE_2__*,int ,int,int) ;
 TYPE_10__* pCoexDm ;
 TYPE_9__* pCoexSta ;
 int stub1 (TYPE_2__*,int ,int*) ;
 int stub2 (TYPE_2__*,int ,int*) ;
 int stub3 (TYPE_2__*,int ,int*) ;
 int stub4 (TYPE_2__*,int ,int*) ;
 int stub5 (TYPE_2__*,int ,int*) ;
 int stub6 (TYPE_2__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b1ant_ActionWifiConnected(PBTC_COEXIST pBtCoexist)
{
 bool bWifiBusy = 0;
 bool bScan = 0, bLink = 0, bRoam = 0;
 bool bUnder4way = 0, bApEnable = 0;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE,
  ("[BTCoex], CoexForWifiConnect() ===>\n")
 );

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_4_WAY_PROGRESS, &bUnder4way);
 if (bUnder4way) {
  halbtc8723b1ant_ActionWifiConnectedSpecialPacket(pBtCoexist);
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], CoexForWifiConnect(), return for wifi is under 4way<===\n")
  );
  return;
 }

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_SCAN, &bScan);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_LINK, &bLink);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_ROAM, &bRoam);
 if (bScan || bLink || bRoam) {
  if (bScan)
   halbtc8723b1ant_ActionWifiConnectedScan(pBtCoexist);
  else
   halbtc8723b1ant_ActionWifiConnectedSpecialPacket(pBtCoexist);
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], CoexForWifiConnect(), return for wifi is under scan<===\n")
  );
  return;
 }

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_AP_MODE_ENABLE, &bApEnable);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_BUSY, &bWifiBusy);


 if (
  !bApEnable &&
  BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus &&
  !pBtCoexist->btLinkInfo.bHidOnly
 ) {
  if (pBtCoexist->btLinkInfo.bA2dpOnly) {
   if (!bWifiBusy)
    halbtc8723b1ant_PowerSaveState(
     pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0
    );
   else {
    if (pCoexSta->nScanAPNum >= BT_8723B_1ANT_WIFI_NOISY_THRESH)
     halbtc8723b1ant_PowerSaveState(
      pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0
     );
    else
     halbtc8723b1ant_PowerSaveState(
      pBtCoexist, BTC_PS_LPS_ON, 0x50, 0x4
     );
   }
  } else if (
   (!pCoexSta->bPanExist) &&
   (!pCoexSta->bA2dpExist) &&
   (!pCoexSta->bHidExist)
  )
   halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
  else
   halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_LPS_ON, 0x50, 0x4);
 } else
  halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);


 if (!bWifiBusy) {
  if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
   halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
    pBtCoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE
   );
  } else if (
   (BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
   (BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
  ) {
   halbtc8723b1ant_ActionBtScoHidOnlyBusy(pBtCoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_IDLE);
  } else {
   halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 8);

   if ((pCoexSta->highPriorityTx) + (pCoexSta->highPriorityRx) <= 60)
    halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
   else
    halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
  }
 } else {
  if (BT_8723B_1ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) {
   halbtc8723b1ant_ActionWifiConnectedBtAclBusy(
    pBtCoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY
   );
  } else if (
   (BT_8723B_1ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
   (BT_8723B_1ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
  ) {
   halbtc8723b1ant_ActionBtScoHidOnlyBusy(
    pBtCoexist,
    BT_8723B_1ANT_WIFI_STATUS_CONNECTED_BUSY
   );
  } else {
   halbtc8723b1ant_PsTdma(pBtCoexist, NORMAL_EXEC, 0, 8);

   if ((pCoexSta->highPriorityTx) + (pCoexSta->highPriorityRx) <= 60)
    halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 2);
   else
    halbtc8723b1ant_CoexTableWithType(pBtCoexist, NORMAL_EXEC, 7);
  }
 }
}
