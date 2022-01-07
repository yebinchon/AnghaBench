
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int (* fBtcFillH2c ) (TYPE_1__*,int,int,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BIT0 ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int stub1 (TYPE_1__*,int,int,int*) ;

__attribute__((used)) static void halbtc8723b1ant_SetSwPenaltyTxRateAdaptive(
 PBTC_COEXIST pBtCoexist, bool bLowPenaltyRa
)
{
 u8 H2C_Parameter[6] = {0};

 H2C_Parameter[0] = 0x6;

 if (bLowPenaltyRa) {
  H2C_Parameter[1] |= BIT0;
  H2C_Parameter[2] = 0x00;
  H2C_Parameter[3] = 0xf7;
  H2C_Parameter[4] = 0xf8;
  H2C_Parameter[5] = 0xf9;
 }

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  (
   "[BTCoex], set WiFi Low-Penalty Retry: %s",
   (bLowPenaltyRa ? "ON!!" : "OFF!!")
  )
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x69, 6, H2C_Parameter);
}
