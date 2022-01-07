
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int bC2hBtInfoReqSent; } ;
struct TYPE_5__ {int (* fBtcFillH2c ) (TYPE_1__*,int,int,int *) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BIT0 ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 TYPE_3__* pCoexSta ;
 int stub1 (TYPE_1__*,int,int,int *) ;

__attribute__((used)) static void halbtc8723b2ant_QueryBtInfo(PBTC_COEXIST pBtCoexist)
{
 u8 H2C_Parameter[1] = {0};

 pCoexSta->bC2hBtInfoReqSent = 1;

 H2C_Parameter[0] |= BIT0;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  ("[BTCoex], Query Bt Info, FW write 0x61 = 0x%x\n", H2C_Parameter[0])
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x61, 1, H2C_Parameter);
}
