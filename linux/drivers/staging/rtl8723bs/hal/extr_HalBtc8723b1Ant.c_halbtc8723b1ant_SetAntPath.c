
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_53__ TYPE_2__ ;
typedef struct TYPE_52__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_53__ {scalar_t__ btdmAntPos; } ;
struct TYPE_52__ {int (* fBtcRead4Byte ) (TYPE_1__*,int) ;int (* fBtcRead1Byte ) (TYPE_1__*,int) ;int (* fBtcWrite4Byte ) (TYPE_1__*,int,int) ;int (* fBtcFillH2c ) (TYPE_1__*,int,int,int*) ;int (* fBtcWrite1ByteBitMask ) (TYPE_1__*,int,int,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;int (* fBtcGet ) (TYPE_1__*,int ,int*) ;int (* fBtcSetBtReg ) (TYPE_1__*,int ,int,int) ;int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;TYPE_2__ boardInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BOARD_INFO ;


 int BIT0 ;
 int BIT23 ;
 int BIT24 ;
 scalar_t__ BTC_ANTENNA_AT_MAIN_PORT ;



 int BTC_BT_REG_RF ;
 int BTC_GET_BL_EXT_SWITCH ;
 int BTC_GET_BL_WIFI_IS_IN_MP_MODE ;
 int BTC_GET_U4_WIFI_FW_VER ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_RF_A ;
 int INTF_INIT ;
 int mdelay (int) ;
 int stub1 (TYPE_1__*,int ,int*) ;
 int stub10 (TYPE_1__*,int,int) ;
 int stub11 (TYPE_1__*,int,int,int) ;
 int stub12 (TYPE_1__*,int,int) ;
 int stub13 (TYPE_1__*,int,int,int*) ;
 int stub14 (TYPE_1__*,int,int) ;
 int stub15 (TYPE_1__*,int,int) ;
 int stub16 (TYPE_1__*,int ,int*) ;
 int stub17 (TYPE_1__*,int,int,int) ;
 int stub18 (TYPE_1__*,int,int,int) ;
 int stub19 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int ,int*) ;
 int stub20 (TYPE_1__*,int,int) ;
 int stub21 (TYPE_1__*,int) ;
 int stub22 (TYPE_1__*,int,int,int*) ;
 int stub23 (TYPE_1__*,int) ;
 int stub24 (TYPE_1__*,int,int) ;
 int stub25 (TYPE_1__*,int) ;
 int stub26 (TYPE_1__*,int,int) ;
 int stub27 (TYPE_1__*,int) ;
 int stub28 (TYPE_1__*,int,int) ;
 int stub29 (TYPE_1__*,int,int) ;
 int stub3 (TYPE_1__*,int ,int,int,int) ;
 int stub30 (TYPE_1__*,int,int,int*) ;
 int stub31 (TYPE_1__*,int,int,int*) ;
 int stub32 (TYPE_1__*,int,int,int) ;
 int stub33 (TYPE_1__*,int,int,int) ;
 int stub34 (TYPE_1__*,int,int,int) ;
 int stub35 (TYPE_1__*,int,int,int) ;
 int stub36 (TYPE_1__*,int,int,int) ;
 int stub37 (TYPE_1__*,int,int,int) ;
 int stub38 (TYPE_1__*,int) ;
 int stub39 (TYPE_1__*,int,int) ;
 int stub4 (TYPE_1__*,int ,int,int) ;
 int stub40 (TYPE_1__*,int,int,int) ;
 int stub41 (TYPE_1__*,int,int,int*) ;
 int stub42 (TYPE_1__*,int,int,int*) ;
 int stub43 (TYPE_1__*,int,int) ;
 int stub44 (TYPE_1__*,int,int) ;
 int stub45 (TYPE_1__*,int,int) ;
 int stub46 (TYPE_1__*,int,int) ;
 int stub47 (TYPE_1__*,int,int) ;
 int stub48 (TYPE_1__*,int,int) ;
 int stub5 (TYPE_1__*,int,int,int*) ;
 int stub6 (TYPE_1__*,int,int) ;
 int stub7 (TYPE_1__*,int,int) ;
 int stub8 (TYPE_1__*,int,int,int) ;
 int stub9 (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_SetAntPath(
 PBTC_COEXIST pBtCoexist, u8 antPosType, bool bInitHwCfg, bool bWifiOff
)
{
 PBTC_BOARD_INFO pBoardInfo = &pBtCoexist->boardInfo;
 u32 fwVer = 0, u4Tmp = 0, cntBtCalChk = 0;
 bool bPgExtSwitch = 0;
 bool bUseExtSwitch = 0;
 bool bIsInMpMode = 0;
 u8 H2C_Parameter[2] = {0}, u1Tmp = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_EXT_SWITCH, &bPgExtSwitch);
 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_U4_WIFI_FW_VER, &fwVer);

 if ((fwVer > 0 && fwVer < 0xc0000) || bPgExtSwitch)
  bUseExtSwitch = 1;

 if (bInitHwCfg) {
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1, 0xfffff, 0x780);
  pBtCoexist->fBtcSetBtReg(pBtCoexist, BTC_BT_REG_RF, 0x3c, 0x15);

  if (fwVer >= 0x180000) {

   H2C_Parameter[0] = 1;
   pBtCoexist->fBtcFillH2c(pBtCoexist, 0x6E, 1, H2C_Parameter);
  } else
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x18);


  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0x4);

  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x1);

  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x39, 0x8, 0x1);
  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x974, 0xff);
  pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x944, 0x3, 0x3);
  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x930, 0x77);
 } else if (bWifiOff) {
  if (fwVer >= 0x180000) {

   H2C_Parameter[0] = 1;
   pBtCoexist->fBtcFillH2c(pBtCoexist, 0x6E, 1, H2C_Parameter);
  } else
   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x18);


  pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0x4);

  pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_WIFI_IS_IN_MP_MODE, &bIsInMpMode);
  if (!bIsInMpMode)
   pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x0);
  else
   pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x67, 0x20, 0x1);


  u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x4c);
  u4Tmp &= ~BIT23;
  u4Tmp &= ~BIT24;
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x4c, u4Tmp);
 } else {

  if (fwVer >= 0x180000) {
   if (pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x765) != 0) {
    H2C_Parameter[0] = 0;
    pBtCoexist->fBtcFillH2c(pBtCoexist, 0x6E, 1, H2C_Parameter);
   }
  } else {

   while (cntBtCalChk <= 20) {
    u1Tmp = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x49d);
    cntBtCalChk++;

    if (u1Tmp & BIT0) {
     BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], ########### BT is calibrating (wait cnt =%d) ###########\n", cntBtCalChk));
     mdelay(50);
    } else {
     BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], ********** BT is NOT calibrating (wait cnt =%d)**********\n", cntBtCalChk));
     break;
    }
   }


   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x0);
  }

  if (pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x76e) != 0xc)

   pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0xc);
 }

 if (bUseExtSwitch) {
  if (bInitHwCfg) {

   u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x4c);
   u4Tmp &= ~BIT23;
   u4Tmp |= BIT24;
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x4c, u4Tmp);

   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);

   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT) {

    H2C_Parameter[0] = 0;
    H2C_Parameter[1] = 1;
    pBtCoexist->fBtcFillH2c(pBtCoexist, 0x65, 2, H2C_Parameter);
   } else {

    H2C_Parameter[0] = 1;
    H2C_Parameter[1] = 1;
    pBtCoexist->fBtcFillH2c(pBtCoexist, 0x65, 2, H2C_Parameter);
   }
  }



  switch (antPosType) {
  case 128:
   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT)
    pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x1);
   else
    pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x2);
   break;
  case 130:
   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT)
    pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x2);
   else
    pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x1);
   break;
  default:
  case 129:
   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT)
    pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x1);
   else
    pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x92c, 0x3, 0x2);
   break;
  }

 } else {
  if (bInitHwCfg) {

   u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x4c);
   u4Tmp |= BIT23;
   u4Tmp &= ~BIT24;
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x4c, u4Tmp);


   pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x64, 0x1, 0x0);

   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT) {


    H2C_Parameter[0] = 0;
    H2C_Parameter[1] = 0;
    pBtCoexist->fBtcFillH2c(pBtCoexist, 0x65, 2, H2C_Parameter);
   } else {


    H2C_Parameter[0] = 1;
    H2C_Parameter[1] = 0;
    pBtCoexist->fBtcFillH2c(pBtCoexist, 0x65, 2, H2C_Parameter);
   }
  }



  switch (antPosType) {
  case 128:
   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT)
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);
   else
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x280);
   break;
  case 130:
   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT)
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x280);
   else
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);
   break;
  default:
  case 129:
   if (pBoardInfo->btdmAntPos == BTC_ANTENNA_AT_MAIN_PORT)
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x200);
   else
    pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x80);
   break;
  }
 }
}
