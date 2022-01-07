
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_28__ {scalar_t__ btdmAntPos; } ;
struct TYPE_27__ {int (* fBtcRead4Byte ) (TYPE_1__*,int) ;int (* fBtcWrite4Byte ) (TYPE_1__*,int,int) ;int (* fBtcWrite1ByteBitMask ) (TYPE_1__*,int,int,int) ;int (* fBtcFillH2c ) (TYPE_1__*,int,int,int*) ;int (* fBtcSetBtReg ) (TYPE_1__*,int ,int,int) ;int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;TYPE_2__ boardInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BOARD_INFO ;


 int BIT23 ;
 int BIT24 ;
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ;


 int BTC_BT_REG_RF ;
 int BTC_GET_BL_EXT_SWITCH ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_RF_A ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub10 (TYPE_1__*,int,int) ;
 int stub11 (TYPE_1__*,int ,int,int,int) ;
 int stub12 (TYPE_1__*,int ,int,int) ;
 int stub13 (TYPE_1__*,int,int,int*) ;
 int stub14 (TYPE_1__*,int) ;
 int stub15 (TYPE_1__*,int,int) ;
 int stub16 (TYPE_1__*,int,int) ;
 int stub17 (TYPE_1__*,int,int,int) ;
 int stub18 (TYPE_1__*,int,int,int) ;
 int stub19 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub20 (TYPE_1__*,int,int) ;
 int stub21 (TYPE_1__*,int,int,int) ;
 int stub22 (TYPE_1__*,int,int) ;
 int stub23 (TYPE_1__*,int,int) ;
 int stub3 (TYPE_1__*,int,int,int) ;
 int stub4 (TYPE_1__*,int,int) ;
 int stub5 (TYPE_1__*,int,int,int) ;
 int stub6 (TYPE_1__*,int,int) ;
 int stub7 (TYPE_1__*,int,int,int) ;
 int stub8 (TYPE_1__*,int,int,int*) ;
 int stub9 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_SetAntPath(
 PBTC_COEXIST pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
)
{
 PBTC_BOARD_INFO pBoardInfo = &pBtCoexist->boardInfo;
 u32 fwVer = 0, u4Tmp = 0;
 bool bPgExtSwitch = 0;
 bool bUseExtSwitch = 0;
 u8 H2C_Parameter[2] = {0};

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_EXT_SWITCH, &bPgExtSwitch);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);

 if ((fwVer > 0 && fwVer < 0xc0000) || bPgExtSwitch)
  bUseExtSwitch = 1;

 if (bInitHwCfg) {
  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x39, 0x8, 0x1);
  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x974, 0xff);
  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x944, 0x3, 0x3);
  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x930, 0x77);
  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x1);

  if (fwVer >= 0x180000) {

   H2C_Parameter[0] = 0;
   pBtCoexist->fBtcFillH2c(pBtCoexist, 0x6E, 1, H2C_Parameter);
  } else {
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x0);
  }

  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);

  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x0);
  pBtCoexist->fBtcSetBtReg(pBtCoexist, BTC_BT_REG_RF, 0x3c, 0x01);

  if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT) {

   H2C_Parameter[0] = 0;
  } else {

   H2C_Parameter[0] = 1;
  }

  if (bUseExtSwitch) {

   H2C_Parameter[1] = 1;
  } else {

   H2C_Parameter[1] = 0;
  }
  pBtCoexist->fBtcFillH2c(pBtCoexist, 0x65, 2, H2C_Parameter);
 }


 if (bUseExtSwitch) {
  if (bInitHwCfg) {

   u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x4c);
   u4Tmp &= ~BIT23;
   u4Tmp |= BIT24;
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x4c, u4Tmp);
  }

  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);
  switch (antPosType) {
  case 128:
   pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x1);
   break;
  case 129:
   pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x2);
   break;
  }
 } else {
  if (bInitHwCfg) {

   u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x4c);
   u4Tmp |= BIT23;
   u4Tmp &= ~BIT24;
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x4c, u4Tmp);
  }

  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x64, 0x1, 0x0);
  switch (antPosType) {
  case 128:
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);
   break;
  case 129:
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x280);
   break;
  }
 }
}
