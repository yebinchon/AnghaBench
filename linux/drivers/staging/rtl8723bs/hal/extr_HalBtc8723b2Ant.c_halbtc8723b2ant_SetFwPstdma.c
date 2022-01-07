
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int* psTdmaPara; } ;
struct TYPE_5__ {int (* fBtcFillH2c ) (TYPE_1__*,int,int,int*) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_FW_EXEC ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 TYPE_3__* pCoexDm ;
 int stub1 (TYPE_1__*,int,int,int*) ;

__attribute__((used)) static void halbtc8723b2ant_SetFwPstdma(
 PBTC_COEXIST pBtCoexist,
 u8 byte1,
 u8 byte2,
 u8 byte3,
 u8 byte4,
 u8 byte5
)
{
 u8 H2C_Parameter[5] = {0};

 H2C_Parameter[0] = byte1;
 H2C_Parameter[1] = byte2;
 H2C_Parameter[2] = byte3;
 H2C_Parameter[3] = byte4;
 H2C_Parameter[4] = byte5;

 pCoexDm->psTdmaPara[0] = byte1;
 pCoexDm->psTdmaPara[1] = byte2;
 pCoexDm->psTdmaPara[2] = byte3;
 pCoexDm->psTdmaPara[3] = byte4;
 pCoexDm->psTdmaPara[4] = byte5;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_FW_EXEC,
  (
   "[BTCoex], FW write 0x60(5bytes) = 0x%x%08x\n",
   H2C_Parameter[0],
   H2C_Parameter[1]<<24|
   H2C_Parameter[2]<<16|
   H2C_Parameter[3]<<8|
   H2C_Parameter[4]
  )
 );

 pBtCoexist->fBtcFillH2c(pBtCoexist, 0x60, 5, H2C_Parameter);
}
