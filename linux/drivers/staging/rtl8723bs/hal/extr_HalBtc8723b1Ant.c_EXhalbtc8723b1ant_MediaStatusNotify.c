
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_20__ {scalar_t__ bBtDisabled; } ;
struct TYPE_21__ {int (* fBtcFillH2c ) (TYPE_2__*,int,int,scalar_t__*) ;int (* fBtcGet ) (TYPE_2__*,int ,scalar_t__*) ;int (* fBtcWrite1Byte ) (TYPE_2__*,int,int) ;int (* fBtcRead1Byte ) (TYPE_2__*,int) ;int (* fBtcRead2Byte ) (TYPE_2__*,int) ;int (* fBtcRead4Byte ) (TYPE_2__*,int) ;TYPE_1__ btInfo; scalar_t__ bStopCoexDm; scalar_t__ bManualControl; } ;
struct TYPE_19__ {scalar_t__* wifiChnlInfo; scalar_t__ nArpCnt; int backupAmpduMaxTime; int backupRetryLimit; int backupArfrCnt2; int backupArfrCnt1; } ;
typedef TYPE_2__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BTC_GET_BL_WIFI_UNDER_B_MODE ;
 int BTC_GET_U1_WIFI_CENTRAL_CHNL ;
 int BTC_GET_U4_WIFI_BW ;
 scalar_t__ BTC_MEDIA_CONNECT ;
 int BTC_MSG_ALGORITHM ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 int INTF_NOTIFY ;
 TYPE_17__* pCoexDm ;
 int stub1 (TYPE_2__*,int ,int*) ;
 int stub10 (TYPE_2__*,int,int) ;
 int stub11 (TYPE_2__*,int,int) ;
 int stub12 (TYPE_2__*,int ,scalar_t__*) ;
 int stub13 (TYPE_2__*,int ,scalar_t__*) ;
 int stub14 (TYPE_2__*,int,int,scalar_t__*) ;
 int stub2 (TYPE_2__*,int,int) ;
 int stub3 (TYPE_2__*,int,int) ;
 int stub4 (TYPE_2__*,int,int) ;
 int stub5 (TYPE_2__*,int,int) ;
 int stub6 (TYPE_2__*,int) ;
 int stub7 (TYPE_2__*,int) ;
 int stub8 (TYPE_2__*,int) ;
 int stub9 (TYPE_2__*,int) ;

void EXhalbtc8723b1ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 u8 H2C_Parameter[3] = {0};
 u32 wifiBw;
 u8 wifiCentralChnl;
 bool bWifiUnderBMode = 0;

 if (
  pBtCoexist->bManualControl ||
  pBtCoexist->bStopCoexDm ||
  pBtCoexist->btInfo.bBtDisabled
 )
  return;

 if (BTC_MEDIA_CONNECT == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA connect notify\n"));

  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_UNDER_B_MODE, &bWifiUnderBMode);


  if (bWifiUnderBMode) {
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cd, 0x00);
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cf, 0x00);
  } else {
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cd, 0x10);
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cf, 0x10);
  }

  pCoexDm->backupArfrCnt1 = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x430);
  pCoexDm->backupArfrCnt2 = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x434);
  pCoexDm->backupRetryLimit = pBtCoexist->fBtcRead2Byte(pBtCoexist, 0x42a);
  pCoexDm->backupAmpduMaxTime = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x456);
 } else {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA disconnect notify\n"));
  pCoexDm->nArpCnt = 0;

  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cd, 0x0);
  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cf, 0x0);
 }


 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_CENTRAL_CHNL, &wifiCentralChnl);
 if ((BTC_MEDIA_CONNECT == type) && (wifiCentralChnl <= 14)) {

  H2C_Parameter[0] = 0x0;
  H2C_Parameter[1] = wifiCentralChnl;
  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);

  if (BTC_WIFI_BW_HT40 == wifiBw)
   H2C_Parameter[2] = 0x30;
  else
   H2C_Parameter[2] = 0x20;
 }

 pCoexDm->wifiChnlInfo[0] = H2C_Parameter[0];
 pCoexDm->wifiChnlInfo[1] = H2C_Parameter[1];
 pCoexDm->wifiChnlInfo[2] = H2C_Parameter[2];

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  (
   "[BTCoex], FW write 0x66 = 0x%x\n",
   H2C_Parameter[0]<<16 | H2C_Parameter[1]<<8 | H2C_Parameter[2]
  )
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x66, 3, H2C_Parameter);
}
