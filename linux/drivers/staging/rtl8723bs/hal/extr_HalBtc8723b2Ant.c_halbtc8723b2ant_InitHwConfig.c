
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int btRf0x1eBackup; } ;
struct TYPE_12__ {int (* fBtcRead1Byte ) (TYPE_1__*,int) ;int (* fBtcWrite1ByteBitMask ) (TYPE_1__*,int,int,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;int (* fBtcGetRfReg ) (TYPE_1__*,int ,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_ANT_WIFI_AT_MAIN ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_RF_A ;
 int FORCE_EXEC ;
 int INTF_INIT ;
 int halbtc8723b2ant_CoexTableWithType (TYPE_1__*,int ,int ) ;
 int halbtc8723b2ant_SetAntPath (TYPE_1__*,int ,int,int) ;
 TYPE_8__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int,int) ;
 int stub4 (TYPE_1__*,int,int) ;
 int stub5 (TYPE_1__*,int,int) ;
 int stub6 (TYPE_1__*,int,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_InitHwConfig(PBTC_COEXIST pBtCoexist, bool bBackUp)
{
 u8 u1Tmp = 0;

 BTC_PRINT(BTC_MSG_INTERFACE, INTF_INIT, ("[BTCoex], 2Ant Init HW Config!!\n"));


 pCoexDm->btRf0x1eBackup =
  pBtCoexist->fBtcGetRfReg(pBtCoexist, BTC_RF_A, 0x1e, 0xfffff);


 u1Tmp = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x790);
 u1Tmp &= 0xc0;
 u1Tmp |= 0x5;
 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x790, u1Tmp);


 halbtc8723b2ant_SetAntPath(pBtCoexist, BTC_ANT_WIFI_AT_MAIN, 1, 0);


 halbtc8723b2ant_CoexTableWithType(pBtCoexist, FORCE_EXEC, 0);


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0xc);
 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x778, 0x3);
 pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x40, 0x20, 0x1);
}
