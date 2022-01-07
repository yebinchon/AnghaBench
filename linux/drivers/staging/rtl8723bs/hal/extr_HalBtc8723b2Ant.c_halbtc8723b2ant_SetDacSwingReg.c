
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int (* fBtcWrite1ByteBitMask ) (TYPE_1__*,int,int,int ) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_SW_EXEC ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int stub1 (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void halbtc8723b2ant_SetDacSwingReg(PBTC_COEXIST pBtCoexist, u32 level)
{
 u8 val = (u8)level;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW_EXEC,
  ("[BTCoex], Write SwDacSwing = 0x%x\n", level)
 );
 pBtCoexist->fBtcWrite1ByteBitMask(pBtCoexist, 0x883, 0x3e, val);
}
