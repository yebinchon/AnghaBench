
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int (* fBtcFillH2c ) (TYPE_1__*,int,int,int *) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int stub1 (TYPE_1__*,int,int,int *) ;

__attribute__((used)) static void halbtc8723b2ant_SetFwDacSwingLevel(
 PBTC_COEXIST pBtCoexist, u8 dacSwingLvl
)
{
 u8 H2C_Parameter[1] = {0};



 H2C_Parameter[0] = dacSwingLvl;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  ("[BTCoex], Set Dac Swing Level = 0x%x\n", dacSwingLvl)
 );
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  ("[BTCoex], FW write 0x64 = 0x%x\n", H2C_Parameter[0])
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x64, 1, H2C_Parameter);
}
