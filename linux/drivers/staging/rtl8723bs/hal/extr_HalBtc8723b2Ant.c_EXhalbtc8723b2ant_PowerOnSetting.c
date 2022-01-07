
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_16__ {int singleAntPath; void* btdmAntPos; } ;
struct TYPE_15__ {int (* fBtcRead2Byte ) (TYPE_1__*,int) ;scalar_t__ chipInterface; int (* fBtcWriteLocalReg1Byte ) (TYPE_1__*,int,int) ;int (* fBtcWrite4Byte ) (TYPE_1__*,int,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;int (* fBtcWrite2Byte ) (TYPE_1__*,int,int) ;TYPE_2__ boardInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BOARD_INFO ;


 int BIT0 ;
 int BIT1 ;
 void* BTC_ANTENNA_AT_AUX_PORT ;
 void* BTC_ANTENNA_AT_MAIN_PORT ;
 scalar_t__ BTC_INTF_PCI ;
 scalar_t__ BTC_INTF_SDIO ;
 scalar_t__ BTC_INTF_USB ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub10 (TYPE_1__*,int,int) ;
 int stub11 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int,int) ;
 int stub4 (TYPE_1__*,int,int) ;
 int stub5 (TYPE_1__*,int,int) ;
 int stub6 (TYPE_1__*,int,int) ;
 int stub7 (TYPE_1__*,int,int) ;
 int stub8 (TYPE_1__*,int,int) ;
 int stub9 (TYPE_1__*,int,int) ;

void EXhalbtc8723b2ant_PowerOnSetting(PBTC_COEXIST pBtCoexist)
{
 PBTC_BOARD_INFO pBoardInfo = &pBtCoexist->boardInfo;
 u8 u1Tmp = 0x4;
 u16 u2Tmp = 0x0;

 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x67, 0x20);


 u2Tmp = pBtCoexist->fBtcRead2Byte(pBtCoexist, 0x2);
 pBtCoexist->fBtcWrite2Byte(pBtCoexist, 0x2, u2Tmp|BIT0|BIT1);


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x765, 0x18);

 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0x4);
 if (pBtCoexist->chipInterface == BTC_INTF_USB) {

  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);

  u1Tmp |= 0x1;
  pBtCoexist->fBtcWriteLocalReg1Byte(pBtCoexist, 0xfe08, u1Tmp);

  pBoardInfo->btdmAntPos = BTC_ANTENNA_AT_AUX_PORT;
 } else {

  if (pBoardInfo->singleAntPath == 0) {

   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x280);
   pBoardInfo->btdmAntPos = BTC_ANTENNA_AT_MAIN_PORT;
  } else if (pBoardInfo->singleAntPath == 1) {

   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, 0x0);
   u1Tmp |= 0x1;
   pBoardInfo->btdmAntPos = BTC_ANTENNA_AT_AUX_PORT;
  }

  if (pBtCoexist->chipInterface == BTC_INTF_PCI)
   pBtCoexist->fBtcWriteLocalReg1Byte(pBtCoexist, 0x384, u1Tmp);
  else if (pBtCoexist->chipInterface == BTC_INTF_SDIO)
   pBtCoexist->fBtcWriteLocalReg1Byte(pBtCoexist, 0x60, u1Tmp);
 }
}
