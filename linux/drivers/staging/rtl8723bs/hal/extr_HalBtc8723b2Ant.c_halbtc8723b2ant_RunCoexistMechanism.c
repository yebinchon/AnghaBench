
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_22__ {int bNeedRecover0x948; int curAlgorithm; int bAutoTdmaAdjust; int preAlgorithm; int backup0x948; } ;
struct TYPE_21__ {scalar_t__ bC2hBtInquiryPage; scalar_t__ bUnderIps; } ;
struct TYPE_20__ {int (* fBtcWrite4Byte ) (TYPE_1__*,int,int ) ;scalar_t__ bManualControl; } ;
typedef TYPE_1__* PBTC_COEXIST ;


 int ALGO_TRACE ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int halbtc8723b2ant_ActionA2dp (TYPE_1__*) ;
 int halbtc8723b2ant_ActionA2dpPanHs (TYPE_1__*) ;
 scalar_t__ halbtc8723b2ant_ActionAlgorithm (TYPE_1__*) ;
 int halbtc8723b2ant_ActionBtInquiry (TYPE_1__*) ;
 int halbtc8723b2ant_ActionHid (TYPE_1__*) ;
 int halbtc8723b2ant_ActionHidA2dp (TYPE_1__*) ;
 int halbtc8723b2ant_ActionHidA2dpPanEdr (TYPE_1__*) ;
 int halbtc8723b2ant_ActionPanEdr (TYPE_1__*) ;
 int halbtc8723b2ant_ActionPanEdrA2dp (TYPE_1__*) ;
 int halbtc8723b2ant_ActionPanEdrHid (TYPE_1__*) ;
 int halbtc8723b2ant_ActionPanHs (TYPE_1__*) ;
 int halbtc8723b2ant_ActionSco (TYPE_1__*) ;
 int halbtc8723b2ant_CoexAllOff (TYPE_1__*) ;
 scalar_t__ halbtc8723b2ant_IsCommonAction (TYPE_1__*) ;
 TYPE_4__* pCoexDm ;
 TYPE_3__* pCoexSta ;
 int stub1 (TYPE_1__*,int,int ) ;

__attribute__((used)) static void halbtc8723b2ant_RunCoexistMechanism(PBTC_COEXIST pBtCoexist)
{
 u8 algorithm = 0;

 BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], RunCoexistMechanism() ===>\n"));

 if (pBtCoexist->bManualControl) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], RunCoexistMechanism(), return for Manual CTRL <===\n"));
  return;
 }

 if (pCoexSta->bUnderIps) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], wifi is under IPS !!!\n"));
  return;
 }

 algorithm = halbtc8723b2ant_ActionAlgorithm(pBtCoexist);
 if (pCoexSta->bC2hBtInquiryPage && (129 != algorithm)) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT is under inquiry/page scan !!\n"));
  halbtc8723b2ant_ActionBtInquiry(pBtCoexist);
  return;
 } else {
  if (pCoexDm->bNeedRecover0x948) {
   pCoexDm->bNeedRecover0x948 = 0;
   pBtCoexist->fBtcWrite4Byte(pBtCoexist, 0x948, pCoexDm->backup0x948);
  }
 }

 pCoexDm->curAlgorithm = algorithm;
 BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Algorithm = %d\n", pCoexDm->curAlgorithm));

 if (halbtc8723b2ant_IsCommonAction(pBtCoexist)) {
  BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant common.\n"));
  pCoexDm->bAutoTdmaAdjust = 0;
 } else {
  if (pCoexDm->curAlgorithm != pCoexDm->preAlgorithm) {
   BTC_PRINT(
    BTC_MSG_ALGORITHM,
    ALGO_TRACE,
    (
     "[BTCoex], preAlgorithm =%d, curAlgorithm =%d\n",
     pCoexDm->preAlgorithm,
     pCoexDm->curAlgorithm
    )
   );
   pCoexDm->bAutoTdmaAdjust = 0;
  }


  switch (pCoexDm->curAlgorithm) {
  case 128:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = SCO.\n"));
   halbtc8723b2ant_ActionSco(pBtCoexist);
   break;
  case 135:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HID.\n"));
   halbtc8723b2ant_ActionHid(pBtCoexist);
   break;
  case 137:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = A2DP.\n"));
   halbtc8723b2ant_ActionA2dp(pBtCoexist);
   break;
  case 136:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = A2DP+PAN(HS).\n"));
   halbtc8723b2ant_ActionA2dpPanHs(pBtCoexist);
   break;
  case 132:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = PAN(EDR).\n"));
   halbtc8723b2ant_ActionPanEdr(pBtCoexist);
   break;
  case 129:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HS mode.\n"));
   halbtc8723b2ant_ActionPanHs(pBtCoexist);
   break;
  case 131:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = PAN+A2DP.\n"));
   halbtc8723b2ant_ActionPanEdrA2dp(pBtCoexist);
   break;
  case 130:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = PAN(EDR)+HID.\n"));
   halbtc8723b2ant_ActionPanEdrHid(pBtCoexist);
   break;
  case 133:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HID+A2DP+PAN.\n"));
   halbtc8723b2ant_ActionHidA2dpPanEdr(pBtCoexist);
   break;
  case 134:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = HID+A2DP.\n"));
   halbtc8723b2ant_ActionHidA2dp(pBtCoexist);
   break;
  default:
   BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], Action 2-Ant, algorithm = coexist All Off!!\n"));
   halbtc8723b2ant_CoexAllOff(pBtCoexist);
   break;
  }
  pCoexDm->preAlgorithm = pCoexDm->curAlgorithm;
 }
}
