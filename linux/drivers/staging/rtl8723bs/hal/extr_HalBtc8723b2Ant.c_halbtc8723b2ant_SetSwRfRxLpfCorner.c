
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int btRf0x1eBackup; } ;
struct TYPE_6__ {int (* fBtcSetRfReg ) (TYPE_1__*,int ,int,int,int) ;scalar_t__ bInitilized; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE_SW_EXEC ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int BTC_RF_A ;
 TYPE_4__* pCoexDm ;
 int stub1 (TYPE_1__*,int ,int,int,int) ;
 int stub2 (TYPE_1__*,int ,int,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_SetSwRfRxLpfCorner(
 PBTC_COEXIST pBtCoexist,
 bool bRxRfShrinkOn
)
{
 if (bRxRfShrinkOn) {

  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE_SW_EXEC,
   ("[BTCoex], Shrink RF Rx LPF corner!!\n")
  );
  pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1e, 0xfffff, 0xffffc);
 } else {


  if (pBtCoexist->bInitilized) {
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE_SW_EXEC, ("[BTCoex], Resume RF Rx LPF corner!!\n"));
   pBtCoexist->fBtcSetRfReg(pBtCoexist, BTC_RF_A, 0x1e, 0xfffff, pCoexDm->btRf0x1eBackup);
  }
 }
}
