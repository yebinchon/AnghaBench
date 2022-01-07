
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_17__ {int nArpCnt; } ;
struct TYPE_16__ {int bWiFiIsHighPriTask; scalar_t__ bC2hBtInquiryPage; scalar_t__ specialPktPeriodCnt; } ;
struct TYPE_14__ {scalar_t__ bBtDisabled; } ;
struct TYPE_15__ {int (* fBtcGet ) (TYPE_2__*,int ,int*) ;TYPE_1__ btInfo; scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int BTC_GET_BL_HS_OPERATION ;
 int BTC_GET_U4_WIFI_LINK_STATUS ;
 int BTC_MSG_INTERFACE ;
 scalar_t__ BTC_PACKET_ARP ;
 scalar_t__ BTC_PACKET_DHCP ;
 scalar_t__ BTC_PACKET_EAPOL ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;
 int NORMAL_EXEC ;
 int halbtc8723b1ant_ActionBtInquiry (TYPE_2__*) ;
 int halbtc8723b1ant_ActionHs (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiConnectedSpecialPacket (TYPE_2__*) ;
 int halbtc8723b1ant_ActionWifiMultiPort (TYPE_2__*) ;
 int halbtc8723b1ant_LimitedRx (TYPE_2__*,int ,int,int,scalar_t__) ;
 int halbtc8723b1ant_LimitedTx (TYPE_2__*,int ,int ,int ,int ,int ) ;
 TYPE_6__* pCoexDm ;
 TYPE_5__* pCoexSta ;
 int stub1 (TYPE_2__*,int ,int*) ;
 int stub2 (TYPE_2__*,int ,int*) ;

void EXhalbtc8723b1ant_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 bool bBtHsOn = 0;
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

 if (
  BTC_PACKET_DHCP == type ||
  BTC_PACKET_EAPOL == type ||
  BTC_PACKET_ARP == type
 ) {
  if (BTC_PACKET_ARP == type) {
   BTC_PRINT(
    BTC_MSG_INTERFACE,
    INTF_NOTIFY,
    ("[BTCoex], special Packet ARP notify\n")
   );

   pCoexDm->nArpCnt++;
   BTC_PRINT(
    BTC_MSG_INTERFACE,
    INTF_NOTIFY,
    ("[BTCoex], ARP Packet Count = %d\n", pCoexDm->nArpCnt)
   );

   if (pCoexDm->nArpCnt >= 10)
    pCoexSta->bWiFiIsHighPriTask = 0;
   else
    pCoexSta->bWiFiIsHighPriTask = 1;
  } else {
   pCoexSta->bWiFiIsHighPriTask = 1;
   BTC_PRINT(
    BTC_MSG_INTERFACE,
    INTF_NOTIFY,
    ("[BTCoex], special Packet DHCP or EAPOL notify\n")
   );
  }
 } else {
  pCoexSta->bWiFiIsHighPriTask = 0;
  BTC_PRINT(
   BTC_MSG_INTERFACE,
   INTF_NOTIFY,
   ("[BTCoex], special Packet [Type = %d] notify\n", type)
  );
 }

 pCoexSta->specialPktPeriodCnt = 0;

 pBtCoexist->fBtcGet(
  pBtCoexist, BTC_GET_U4_WIFI_LINK_STATUS, &wifiLinkStatus
 );
 numOfWifiLink = wifiLinkStatus>>16;

 if (numOfWifiLink >= 2) {
  halbtc8723b1ant_LimitedTx(pBtCoexist, NORMAL_EXEC, 0, 0, 0, 0);
  halbtc8723b1ant_LimitedRx(
   pBtCoexist, NORMAL_EXEC, 0, bBtCtrlAggBufSize, aggBufSize
  );
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

 if (
  BTC_PACKET_DHCP == type ||
  BTC_PACKET_EAPOL == type ||
  ((BTC_PACKET_ARP == type) && (pCoexSta->bWiFiIsHighPriTask))
 )
  halbtc8723b1ant_ActionWifiConnectedSpecialPacket(pBtCoexist);
}
