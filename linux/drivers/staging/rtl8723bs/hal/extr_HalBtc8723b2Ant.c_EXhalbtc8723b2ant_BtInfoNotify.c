
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_16__ {scalar_t__ btStatus; int bLimitedDig; } ;
struct TYPE_15__ {int bC2hBtInfoReqSent; int** btInfoC2h; int btRetryCnt; int btRssi; int btInfoExt; int bBtTxRxMask; int bC2hBtInquiryPage; int bBtLinkExist; int bPanExist; int bA2dpExist; int bHidExist; int bScoExist; int * btInfoC2hCnt; } ;
struct TYPE_14__ {int (* fBtcSet ) (TYPE_1__*,int ,int*) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;int (* fBtcSetBtReg ) (TYPE_1__*,int ,int,int) ;scalar_t__ bManualControl; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BIT1 ;
 int BIT3 ;
 int BTC_BT_REG_RF ;
 int BTC_GET_BL_WIFI_CONNECTED ;
 int BTC_MEDIA_CONNECT ;
 int BTC_MEDIA_DISCONNECT ;
 int BTC_MSG_ALGORITHM ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_SET_BL_BT_LIMITED_DIG ;
 int BTC_SET_BL_BT_TRAFFIC_BUSY ;
 int BTC_SET_BL_BT_TX_RX_MASK ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_ACL_BUSY ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_MAX ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE ;
 scalar_t__ BT_8723B_2ANT_BT_STATUS_SCO_BUSY ;
 int BT_INFO_8723B_2ANT_B_A2DP ;
 int BT_INFO_8723B_2ANT_B_ACL_BUSY ;
 int BT_INFO_8723B_2ANT_B_CONNECTION ;
 int BT_INFO_8723B_2ANT_B_FTP ;
 int BT_INFO_8723B_2ANT_B_HID ;
 int BT_INFO_8723B_2ANT_B_INQ_PAGE ;
 int BT_INFO_8723B_2ANT_B_SCO_BUSY ;
 int BT_INFO_8723B_2ANT_B_SCO_ESCO ;
 int BT_INFO_SRC_8723B_2ANT_MAX ;
 int BT_INFO_SRC_8723B_2ANT_WIFI_FW ;
 int EXhalbtc8723b2ant_MediaStatusNotify (TYPE_1__*,int ) ;
 int FORCE_EXEC ;
 int INTF_NOTIFY ;
 int halbtc8723b2ant_IgnoreWlanAct (TYPE_1__*,int ,int) ;
 int halbtc8723b2ant_RunCoexistMechanism (TYPE_1__*) ;
 int halbtc8723b2ant_UpdateBtLinkInfo (TYPE_1__*) ;
 TYPE_8__* pCoexDm ;
 TYPE_7__* pCoexSta ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub2 (TYPE_1__*,int ,int,int) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int ,int*) ;
 int stub5 (TYPE_1__*,int ,int*) ;

void EXhalbtc8723b2ant_BtInfoNotify(
 PBTC_COEXIST pBtCoexist, u8 *tmpBuf, u8 length
)
{
 u8 btInfo = 0;
 u8 i, rspSource = 0;
 bool bBtBusy = 0, bLimitedDig = 0;
 bool bWifiConnected = 0;

 pCoexSta->bC2hBtInfoReqSent = 0;

 rspSource = tmpBuf[0]&0xf;
 if (rspSource >= BT_INFO_SRC_8723B_2ANT_MAX)
  rspSource = BT_INFO_SRC_8723B_2ANT_WIFI_FW;

 pCoexSta->btInfoC2hCnt[rspSource]++;

 BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], Bt info[%d], length =%d, hex data =[", rspSource, length));
 for (i = 0; i < length; i++) {
  pCoexSta->btInfoC2h[rspSource][i] = tmpBuf[i];
  if (i == 1)
   btInfo = tmpBuf[i];

  if (i == length-1) {
   BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("0x%02x]\n", tmpBuf[i]));
  } else {
   BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("0x%02x, ", tmpBuf[i]));
  }
 }

 if (pBtCoexist->bManualControl) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), return for Manual CTRL<===\n"));
  return;
 }

 if (BT_INFO_SRC_8723B_2ANT_WIFI_FW != rspSource) {
  pCoexSta->btRetryCnt = pCoexSta->btInfoC2h[rspSource][2]&0xf;

  pCoexSta->btRssi = pCoexSta->btInfoC2h[rspSource][3]*2+10;

  pCoexSta->btInfoExt = pCoexSta->btInfoC2h[rspSource][4];

  pCoexSta->bBtTxRxMask = (pCoexSta->btInfoC2h[rspSource][2]&0x40);
  pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_TX_RX_MASK, &pCoexSta->bBtTxRxMask);
  if (pCoexSta->bBtTxRxMask) {

   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Switch BT TRx Mask since BT RF REG 0x3C != 0x01\n"));
   pBtCoexist->fBtcSetBtReg(pBtCoexist, BTC_BT_REG_RF, 0x3c, 0x01);
  }



  if ((pCoexSta->btInfoExt & BIT1)) {
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT ext info bit1 check, send wifi BW&Chnl to BT!!\n"));
   pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_CONNECTED, &bWifiConnected);

   if (bWifiConnected)
    EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, BTC_MEDIA_CONNECT);
   else
    EXhalbtc8723b2ant_MediaStatusNotify(pBtCoexist, BTC_MEDIA_DISCONNECT);
  }

  if ((pCoexSta->btInfoExt & BIT3)) {
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\n"));
   halbtc8723b2ant_IgnoreWlanAct(pBtCoexist, FORCE_EXEC, 0);
  } else {

  }
 }


 if (btInfo & BT_INFO_8723B_2ANT_B_INQ_PAGE)
  pCoexSta->bC2hBtInquiryPage = 1;
 else
  pCoexSta->bC2hBtInquiryPage = 0;


 if (!(btInfo&BT_INFO_8723B_2ANT_B_CONNECTION)) {
  pCoexSta->bBtLinkExist = 0;
  pCoexSta->bPanExist = 0;
  pCoexSta->bA2dpExist = 0;
  pCoexSta->bHidExist = 0;
  pCoexSta->bScoExist = 0;
 } else {
  pCoexSta->bBtLinkExist = 1;
  if (btInfo & BT_INFO_8723B_2ANT_B_FTP)
   pCoexSta->bPanExist = 1;
  else
   pCoexSta->bPanExist = 0;
  if (btInfo & BT_INFO_8723B_2ANT_B_A2DP)
   pCoexSta->bA2dpExist = 1;
  else
   pCoexSta->bA2dpExist = 0;
  if (btInfo & BT_INFO_8723B_2ANT_B_HID)
   pCoexSta->bHidExist = 1;
  else
   pCoexSta->bHidExist = 0;
  if (btInfo & BT_INFO_8723B_2ANT_B_SCO_ESCO)
   pCoexSta->bScoExist = 1;
  else
   pCoexSta->bScoExist = 0;
 }

 halbtc8723b2ant_UpdateBtLinkInfo(pBtCoexist);

 if (!(btInfo&BT_INFO_8723B_2ANT_B_CONNECTION)) {
  pCoexDm->btStatus = BT_8723B_2ANT_BT_STATUS_NON_CONNECTED_IDLE;
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT Non-Connected idle!!!\n"));
 } else if (btInfo == BT_INFO_8723B_2ANT_B_CONNECTION) {
  pCoexDm->btStatus = BT_8723B_2ANT_BT_STATUS_CONNECTED_IDLE;
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT Connected-idle!!!\n"));
 } else if (
  (btInfo&BT_INFO_8723B_2ANT_B_SCO_ESCO) ||
  (btInfo&BT_INFO_8723B_2ANT_B_SCO_BUSY)
 ) {
  pCoexDm->btStatus = BT_8723B_2ANT_BT_STATUS_SCO_BUSY;
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT SCO busy!!!\n"));
 } else if (btInfo&BT_INFO_8723B_2ANT_B_ACL_BUSY) {
  pCoexDm->btStatus = BT_8723B_2ANT_BT_STATUS_ACL_BUSY;
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT ACL busy!!!\n"));
 } else {
  pCoexDm->btStatus = BT_8723B_2ANT_BT_STATUS_MAX;
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BtInfoNotify(), BT Non-Defined state!!!\n"));
 }

 if (
  (BT_8723B_2ANT_BT_STATUS_ACL_BUSY == pCoexDm->btStatus) ||
  (BT_8723B_2ANT_BT_STATUS_SCO_BUSY == pCoexDm->btStatus) ||
  (BT_8723B_2ANT_BT_STATUS_ACL_SCO_BUSY == pCoexDm->btStatus)
 ) {
  bBtBusy = 1;
  bLimitedDig = 1;
 } else {
  bBtBusy = 0;
  bLimitedDig = 0;
 }

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_TRAFFIC_BUSY, &bBtBusy);

 pCoexDm->bLimitedDig = bLimitedDig;
 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_BL_BT_LIMITED_DIG, &bLimitedDig);

 halbtc8723b2ant_RunCoexistMechanism(pBtCoexist);
}
