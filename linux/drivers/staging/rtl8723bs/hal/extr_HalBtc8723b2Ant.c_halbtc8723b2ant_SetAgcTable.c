
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_30__ {int (* fBtcSet ) (TYPE_1__*,int ,int*) ;int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;int (* fBtcWrite4Byte ) (TYPE_1__*,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_SW_EXEC ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_RF_A ;
 int BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON ;
 int stub1 (TYPE_1__*,int,int) ;
 int stub10 (TYPE_1__*,int,int) ;
 int stub11 (TYPE_1__*,int,int) ;
 int stub12 (TYPE_1__*,int,int) ;
 int stub13 (TYPE_1__*,int,int) ;
 int stub14 (TYPE_1__*,int,int) ;
 int stub15 (TYPE_1__*,int ,int,int,int) ;
 int stub16 (TYPE_1__*,int ,int,int,int) ;
 int stub17 (TYPE_1__*,int ,int,int,int) ;
 int stub18 (TYPE_1__*,int ,int,int,int) ;
 int stub19 (TYPE_1__*,int ,int,int,int) ;
 int stub2 (TYPE_1__*,int,int) ;
 int stub20 (TYPE_1__*,int ,int,int,int) ;
 int stub21 (TYPE_1__*,int ,int,int,int) ;
 int stub22 (TYPE_1__*,int ,int,int,int) ;
 int stub23 (TYPE_1__*,int ,int,int,int) ;
 int stub24 (TYPE_1__*,int ,int,int,int) ;
 int stub25 (TYPE_1__*,int ,int,int,int) ;
 int stub26 (TYPE_1__*,int ,int,int,int) ;
 int stub27 (TYPE_1__*,int ,int*) ;
 int stub3 (TYPE_1__*,int,int) ;
 int stub4 (TYPE_1__*,int,int) ;
 int stub5 (TYPE_1__*,int,int) ;
 int stub6 (TYPE_1__*,int,int) ;
 int stub7 (TYPE_1__*,int,int) ;
 int stub8 (TYPE_1__*,int,int) ;
 int stub9 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_SetAgcTable(
 PBTC_COEXIST pBtCoexist, bool bAgcTableEn
)
{
 u8 rssiAdjustVal = 0;


 if (bAgcTableEn) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], BB Agc Table On!\n"));
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6e1A0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6d1B0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6c1C0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6b1D0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x6a1E0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x691F0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0x68200001);
 } else {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], BB Agc Table Off!\n"));
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xaa1A0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa91B0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa81C0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa71D0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa61E0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa51F0001);
  pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0xc78, 0xa4200001);
 }



 pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xef, 0xfffff, 0x02000);
 if (bAgcTableEn) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table On!\n"));
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x38fff);
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x38ffe);
 } else {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table Off!\n"));
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x380c3);
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x3b, 0xfffff, 0x28ce6);
 }
 pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xef, 0xfffff, 0x0);

 pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xed, 0xfffff, 0x1);
 if (bAgcTableEn) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table On!\n"));
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x38fff);
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x38ffe);
 } else {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Agc Table Off!\n"));
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x380c3);
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x40, 0xfffff, 0x28ce6);
 }
 pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0xed, 0xfffff, 0x0);


 if (bAgcTableEn)
  rssiAdjustVal = 8;

 pBtCoexist->fBtcSet(pBtCoexist, BTC_SET_U1_RSSI_ADJ_VAL_FOR_AGC_TABLE_ON, &rssiAdjustVal);
}
