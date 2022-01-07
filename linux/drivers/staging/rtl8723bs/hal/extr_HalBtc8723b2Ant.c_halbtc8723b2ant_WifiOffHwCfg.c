
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_11__ {int (* fBtcWrite1ByteBitMask ) (TYPE_1__*,int,int,int) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;int (* fBtcFillH2c ) (TYPE_1__*,int,int,int*) ;int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_GET_BL_WIFI_IS_IN_MP_MODE ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_RF_A ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int,int) ;
 int stub3 (TYPE_1__*,int ,int*) ;
 int stub4 (TYPE_1__*,int,int,int*) ;
 int stub5 (TYPE_1__*,int,int) ;
 int stub6 (TYPE_1__*,int ,int*) ;
 int stub7 (TYPE_1__*,int,int,int) ;
 int stub8 (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_WifiOffHwCfg(PBTC_COEXIST pBtCoexist)
{
 bool bIsInMpMode = 0;
 u8 H2C_Parameter[2] = {0};
 u32 fwVer = 0;


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0x4);

 pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x780);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);
 if (fwVer >= 0x180000) {

  H2C_Parameter[0] = 1;
  pBtCoexist->fBtcFillH2c(pBtCoexist, 0x6E, 1, H2C_Parameter);
 } else
  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x18);

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_IS_IN_MP_MODE, &bIsInMpMode);
 if (!bIsInMpMode)
  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x0);
 else
  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x1);
}
