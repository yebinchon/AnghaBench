
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_7__ {int (* fBtcWrite1Byte ) (TYPE_1__*,int,int ) ;int (* fBtcWrite4Byte ) (TYPE_1__*,int,int ) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_SW_EXEC ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int stub1 (TYPE_1__*,int,int ) ;
 int stub2 (TYPE_1__*,int,int ) ;
 int stub3 (TYPE_1__*,int,int ) ;
 int stub4 (TYPE_1__*,int,int ) ;

__attribute__((used)) static void halbtc8723b1ant_SetCoexTable(
 PBTC_COEXIST pBtCoexist,
 u32 val0x6c0,
 u32 val0x6c4,
 u32 val0x6c8,
 u8 val0x6cc
)
{
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW_EXEC,
  ("[BTCoex], set coex table, set 0x6c0 = 0x%x\n", val0x6c0)
 );
 pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x6c0, val0x6c0);

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW_EXEC,
  ("[BTCoex], set coex table, set 0x6c4 = 0x%x\n", val0x6c4)
 );
 pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x6c4, val0x6c4);

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW_EXEC,
  ("[BTCoex], set coex table, set 0x6c8 = 0x%x\n", val0x6c8)
 );
 pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x6c8, val0x6c8);

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE_SW_EXEC,
  ("[BTCoex], set coex table, set 0x6cc = 0x%x\n", val0x6cc)
 );
 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x6cc, val0x6cc);
}
