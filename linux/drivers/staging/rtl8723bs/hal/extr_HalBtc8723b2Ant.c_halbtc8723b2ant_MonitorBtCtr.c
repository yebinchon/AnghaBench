
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int highPriorityTx; int highPriorityRx; int lowPriorityTx; int lowPriorityRx; } ;
struct TYPE_7__ {int (* fBtcRead4Byte ) (TYPE_1__*,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_BT_MONITOR ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int bMaskHWord ;
 int bMaskLWord ;
 TYPE_5__* pCoexSta ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b2ant_MonitorBtCtr(PBTC_COEXIST pBtCoexist)
{
 u32 regHPTxRx, regLPTxRx, u4Tmp;
 u32 regHPTx = 0, regHPRx = 0, regLPTx = 0, regLPRx = 0;

 regHPTxRx = 0x770;
 regLPTxRx = 0x774;

 u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regHPTxRx);
 regHPTx = u4Tmp & bMaskLWord;
 regHPRx = (u4Tmp & bMaskHWord)>>16;

 u4Tmp = pBtCoexist->fBtcRead4Byte(pBtCoexist, regLPTxRx);
 regLPTx = u4Tmp & bMaskLWord;
 regLPRx = (u4Tmp & bMaskHWord)>>16;

 pCoexSta->highPriorityTx = regHPTx;
 pCoexSta->highPriorityRx = regHPRx;
 pCoexSta->lowPriorityTx = regLPTx;
 pCoexSta->lowPriorityRx = regLPRx;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_BT_MONITOR,
  (
   "[BTCoex], High Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\n",
   regHPTxRx,
   regHPTx,
   regHPTx,
   regHPRx,
   regHPRx
  )
 );
 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_BT_MONITOR,
  (
   "[BTCoex], Low Priority Tx/Rx (reg 0x%x) = 0x%x(%d)/0x%x(%d)\n",
   regLPTxRx,
   regLPTx,
   regLPTx,
   regLPRx,
   regLPRx
  )
 );


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0xc);
}
