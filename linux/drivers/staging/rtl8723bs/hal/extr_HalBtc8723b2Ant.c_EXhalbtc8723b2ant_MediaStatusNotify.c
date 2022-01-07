
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_9__ {scalar_t__* wifiChnlInfo; } ;
struct TYPE_8__ {int (* fBtcFillH2c ) (TYPE_1__*,int,int,scalar_t__*) ;int (* fBtcGet ) (TYPE_1__*,int ,scalar_t__*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BTC_GET_U1_AP_NUM ;
 int BTC_GET_U1_WIFI_CENTRAL_CHNL ;
 int BTC_GET_U4_WIFI_BW ;
 scalar_t__ BTC_MEDIA_CONNECT ;
 int BTC_MSG_ALGORITHM ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 scalar_t__ BTC_WIFI_BW_HT40 ;
 int INTF_NOTIFY ;
 TYPE_6__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,scalar_t__*) ;
 int stub2 (TYPE_1__*,int ,scalar_t__*) ;
 int stub3 (TYPE_1__*,int ,scalar_t__*) ;
 int stub4 (TYPE_1__*,int,int,scalar_t__*) ;

void EXhalbtc8723b2ant_MediaStatusNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 u8 H2C_Parameter[3] = {0};
 u32 wifiBw;
 u8 wifiCentralChnl;
 u8 apNum = 0;

 if (BTC_MEDIA_CONNECT == type) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA connect notify\n"));
 } else {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], MEDIA disconnect notify\n"));
 }


 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_WIFI_CENTRAL_CHNL, &wifiCentralChnl);
 if ((BTC_MEDIA_CONNECT == type) && (wifiCentralChnl <= 14)) {
  H2C_Parameter[0] = 0x1;
  H2C_Parameter[1] = wifiCentralChnl;
  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_BW, &wifiBw);
  if (BTC_WIFI_BW_HT40 == wifiBw)
   H2C_Parameter[2] = 0x30;
  else {
   pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U1_AP_NUM, &apNum);
   if (apNum < 10)
    H2C_Parameter[2] = 0x30;
   else
    H2C_Parameter[2] = 0x20;
  }
 }

 pCoexDm->wifiChnlInfo[0] = H2C_Parameter[0];
 pCoexDm->wifiChnlInfo[1] = H2C_Parameter[1];
 pCoexDm->wifiChnlInfo[2] = H2C_Parameter[2];

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  (
   "[BTCoex], FW write 0x66 = 0x%x\n",
   H2C_Parameter[0]<<16|H2C_Parameter[1]<<8|H2C_Parameter[2]
  )
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x66, 3, H2C_Parameter);
}
