
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_9__ {int highPriorityTx; int highPriorityRx; int lowPriorityTx; int lowPriorityRx; int popEventCnt; int bC2hBtInquiryPage; scalar_t__ bUnderIps; } ;
struct TYPE_8__ {int (* fBtcRead4Byte ) (TYPE_1__*,int) ;int (* fBtcWrite1Byte ) (TYPE_1__*,int,int) ;} ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int bMaskHWord ;
 int bMaskLWord ;
 int halbtc8723b1ant_QueryBtInfo (TYPE_1__*) ;
 TYPE_5__* pCoexSta ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;
 int stub3 (TYPE_1__*,int,int) ;

__attribute__((used)) static void halbtc8723b1ant_MonitorBtCtr(PBTC_COEXIST pBtCoexist)
{
 u32 regHPTxRx, regLPTxRx, u4Tmp;
 u32 regHPTx = 0, regHPRx = 0, regLPTx = 0, regLPRx = 0;
 static u8 NumOfBtCounterChk;




 if (pCoexSta->bUnderIps) {
  pCoexSta->highPriorityTx = 65535;
  pCoexSta->highPriorityRx = 65535;
  pCoexSta->lowPriorityTx = 65535;
  pCoexSta->lowPriorityRx = 65535;
  return;
 }

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

 if ((pCoexSta->lowPriorityTx >= 1050) && (!pCoexSta->bC2hBtInquiryPage))
  pCoexSta->popEventCnt++;

 BTC_PRINT(
  BTC_MSG_ALGORITHM,
  ALGO_TRACE,
  (
   "[BTCoex], Hi-Pri Rx/Tx: %d/%d, Lo-Pri Rx/Tx: %d/%d\n",
   regHPRx,
   regHPTx,
   regLPRx,
   regLPTx
  )
 );


 pBtCoexist->fBtcWrite1Byte(pBtCoexist, 0x76e, 0xc);

 if ((regHPTx == 0) && (regHPRx == 0) && (regLPTx == 0) && (regLPRx == 0)) {
  NumOfBtCounterChk++;
  if (NumOfBtCounterChk >= 3) {
   halbtc8723b1ant_QueryBtInfo(pBtCoexist);
   NumOfBtCounterChk = 0;
  }
 }
}
