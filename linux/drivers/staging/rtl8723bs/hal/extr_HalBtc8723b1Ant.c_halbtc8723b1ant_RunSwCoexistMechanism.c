
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int curAlgorithm; int preAlgorithm; } ;
typedef int PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b1ant_ActionAlgorithm (int ) ;
 scalar_t__ halbtc8723b1ant_IsCommonAction (int ) ;
 TYPE_1__* pCoexDm ;

__attribute__((used)) static void halbtc8723b1ant_RunSwCoexistMechanism(PBTC_COEXIST pBtCoexist)
{
 u8 algorithm = 0;

 algorithm = halbtc8723b1ant_ActionAlgorithm(pBtCoexist);
 pCoexDm->curAlgorithm = algorithm;

 if (halbtc8723b1ant_IsCommonAction(pBtCoexist)) {

 } else {
  switch (pCoexDm->curAlgorithm) {
  case 128:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = SCO.\n"));

   break;
  case 135:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = HID.\n"));

   break;
  case 137:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = A2DP.\n"));

   break;
  case 136:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = A2DP+PAN(HS).\n"));

   break;
  case 132:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = PAN(EDR).\n"));

   break;
  case 129:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = HS mode.\n"));

   break;
  case 131:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = PAN+A2DP.\n"));

   break;
  case 130:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = PAN(EDR)+HID.\n"));

   break;
  case 133:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = HID+A2DP+PAN.\n"));

   break;
  case 134:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = HID+A2DP.\n"));

   break;
  default:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action algorithm = coexist All Off!!\n"));
   break;
  }
  pCoexDm->preAlgorithm = pCoexDm->curAlgorithm;
 }
}
