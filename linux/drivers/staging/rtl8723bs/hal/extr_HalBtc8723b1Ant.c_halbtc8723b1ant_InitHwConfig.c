
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_13__ {int (* fBtcRead1Byte ) (TYPE_1__*,int) ;int (* fBtcRead4Byte ) (TYPE_1__*,int) ;int (* fBtcWrite1ByteBitMask ) (TYPE_1__*,int,int,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int BTC_ANT_PATH_BT ;
 int BTC_ANT_PATH_WIFI ;
 int BTC_MSG_INTERFACE ;
 int BTC_PRINT (int ,int ,char*) ;
 int FORCE_EXEC ;
 int INTF_INIT ;
 int INTF_NOTIFY ;
 int halbtc8723b1ant_CoexTableWithType (TYPE_1__*,int ,int ) ;
 int halbtc8723b1ant_PsTdma (TYPE_1__*,int ,int,int) ;
 int halbtc8723b1ant_SetAntPath (TYPE_1__*,int ,int,int) ;
 int stub1 (TYPE_1__*,int,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;
 int stub3 (TYPE_1__*,int,int) ;
 int stub4 (TYPE_1__*,int,int,int) ;
 int stub5 (TYPE_1__*,int) ;
 int stub6 (TYPE_1__*,int) ;
 int stub7 (TYPE_1__*,int) ;

__attribute__((used)) static void halbtc8723b1ant_InitHwConfig(
 PBTC_COEXIST pBtCoexist,
 bool bBackUp,
 bool bWifiOnly
)
{
 u32 u4Tmp = 0;
 u8 u1Tmpa = 0, u1Tmpb = 0;

 BTC_PRINT(
  BTC_MSG_INTERFACE,
  INTF_INIT,
  ("[BTCoex], 1Ant Init HW Config!!\n")
 );

 pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x550, 0x8, 0x1);


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x790, 0x5);


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x778, 0x1);
 pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x40, 0x20, 0x1);


 if (bWifiOnly) {
  halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_WIFI, 1, 0);
  halbtc8723b1ant_PsTdma(pBtCoexist, FORCE_EXEC, 0, 9);
 } else
  halbtc8723b1ant_SetAntPath(pBtCoexist, BTC_ANT_PATH_BT, 1, 0);


 halbtc8723b1ant_CoexTableWithType(pBtCoexist, FORCE_EXEC, 0);

 u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, 0x948);
 u1Tmpa = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x765);
 u1Tmpb = pBtCoexist->fBtcRead1Byte(pBtCoexist, 0x67);

 BTC_PRINT(
  BTC_MSG_INTERFACE,
  INTF_NOTIFY,
  (
   "############# [BTCoex], 0x948 = 0x%x, 0x765 = 0x%x, 0x67 = 0x%x\n",
   u4Tmp,
   u1Tmpa,
   u1Tmpb
  )
 );
}
