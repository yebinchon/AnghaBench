
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_9__ {scalar_t__ bAutoTdmaAdjust; } ;
struct TYPE_8__ {int (* fBtcGet ) (TYPE_1__*,int ,int *) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_GET_U4_BT_PATCH_VER ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_MSG_ALGORITHM ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int GLCoexVer8723b2Ant ;
 int GLCoexVerDate8723b2Ant ;
 int INTF_INIT ;
 scalar_t__ halbtc8723b2ant_IsWifiStatusChanged (TYPE_1__*) ;
 int halbtc8723b2ant_RunCoexistMechanism (TYPE_1__*) ;
 TYPE_4__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int *) ;
 int stub2 (TYPE_1__*,int ,int *) ;

void EXhalbtc8723b2ant_Periodical(PBTC_COEXIST pBtCoexist)
{
 static u8 disVerInfoCnt;
 u32 fwVer = 0, btPatchVer = 0;

 BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], ==========================Periodical ===========================\n"));

 if (disVerInfoCnt <= 5) {
  disVerInfoCnt += 1;
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], ****************************************************************\n"));
  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_BT_PATCH_VER, &btPatchVer);
  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], CoexVer/ FwVer/ PatchVer = %d_%x/ 0x%x/ 0x%x(%d)\n", GLCoexVerDate8723b2Ant, GLCoexVer8723b2Ant, fwVer, btPatchVer, btPatchVer));

  BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], ****************************************************************\n"));
 }

 if (
  halbtc8723b2ant_IsWifiStatusChanged(pBtCoexist) ||
  pCoexDm->bAutoTdmaAdjust
 )
  halbtc8723b2ant_RunCoexistMechanism(pBtCoexist);
}
