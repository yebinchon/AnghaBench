
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ bA2dpExist; scalar_t__ bPanExist; scalar_t__ bHidExist; scalar_t__ bScoExist; int bBtLinkExist; } ;
struct TYPE_5__ {int (* fBtcGet ) (TYPE_1__*,int ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BT_LINK_INFO ;


 int ALGO_TRACE ;
 int BTC_GET_BL_HS_OPERATION ;
 int BTC_MSG_ALGORITHM ;
 int BTC_PRINT (int ,int ,char*) ;
 int BT_8723B_1ANT_COEX_ALGO_A2DP ;
 int BT_8723B_1ANT_COEX_ALGO_A2DP_PANHS ;
 int BT_8723B_1ANT_COEX_ALGO_HID ;
 int BT_8723B_1ANT_COEX_ALGO_HID_A2DP ;
 int BT_8723B_1ANT_COEX_ALGO_HID_A2DP_PANEDR ;
 int BT_8723B_1ANT_COEX_ALGO_PANEDR ;
 int BT_8723B_1ANT_COEX_ALGO_PANEDR_A2DP ;
 int BT_8723B_1ANT_COEX_ALGO_PANEDR_HID ;
 int BT_8723B_1ANT_COEX_ALGO_PANHS ;
 int BT_8723B_1ANT_COEX_ALGO_SCO ;
 int BT_8723B_1ANT_COEX_ALGO_UNDEFINED ;
 int stub1 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static u8 halbtc8723b1ant_ActionAlgorithm(PBTC_COEXIST pBtCoexist)
{
 PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
 bool bBtHsOn = 0;
 u8 algorithm = BT_8723B_1ANT_COEX_ALGO_UNDEFINED;
 u8 numOfDiffProfile = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);

 if (!pBtLinkInfo->bBtLinkExist) {
  BTC_PRINT(
   BTC_MSG_ALGORITHM,
   ALGO_TRACE,
   ("[BTCoex], No BT link exists!!!\n")
  );
  return algorithm;
 }

 if (pBtLinkInfo->bScoExist)
  numOfDiffProfile++;
 if (pBtLinkInfo->bHidExist)
  numOfDiffProfile++;
 if (pBtLinkInfo->bPanExist)
  numOfDiffProfile++;
 if (pBtLinkInfo->bA2dpExist)
  numOfDiffProfile++;

 if (numOfDiffProfile == 1) {
  if (pBtLinkInfo->bScoExist) {
   BTC_PRINT(
    BTC_MSG_ALGORITHM,
    ALGO_TRACE,
    ("[BTCoex], BT Profile = SCO only\n")
   );
   algorithm = BT_8723B_1ANT_COEX_ALGO_SCO;
  } else {
   if (pBtLinkInfo->bHidExist) {
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE,
     ("[BTCoex], BT Profile = HID only\n")
    );
    algorithm = BT_8723B_1ANT_COEX_ALGO_HID;
   } else if (pBtLinkInfo->bA2dpExist) {
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE,
     ("[BTCoex], BT Profile = A2DP only\n")
    );
    algorithm = BT_8723B_1ANT_COEX_ALGO_A2DP;
   } else if (pBtLinkInfo->bPanExist) {
    if (bBtHsOn) {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = PAN(HS) only\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANHS;
    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = PAN(EDR) only\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR;
    }
   }
  }
 } else if (numOfDiffProfile == 2) {
  if (pBtLinkInfo->bScoExist) {
   if (pBtLinkInfo->bHidExist) {
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE,
     ("[BTCoex], BT Profile = SCO + HID\n")
    );
    algorithm = BT_8723B_1ANT_COEX_ALGO_HID;
   } else if (pBtLinkInfo->bA2dpExist) {
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE,
     ("[BTCoex], BT Profile = SCO + A2DP ==> SCO\n")
    );
    algorithm = BT_8723B_1ANT_COEX_ALGO_SCO;
   } else if (pBtLinkInfo->bPanExist) {
    if (bBtHsOn) {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = SCO + PAN(HS)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_SCO;
    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = SCO + PAN(EDR)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR_HID;
    }
   }
  } else {
   if (pBtLinkInfo->bHidExist && pBtLinkInfo->bA2dpExist) {
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE,
     ("[BTCoex], BT Profile = HID + A2DP\n")
    );
    algorithm = BT_8723B_1ANT_COEX_ALGO_HID_A2DP;
   } else if (pBtLinkInfo->bHidExist && pBtLinkInfo->bPanExist) {
    if (bBtHsOn) {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = HID + PAN(HS)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_HID_A2DP;
    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = HID + PAN(EDR)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR_HID;
    }
   } else if (pBtLinkInfo->bPanExist && pBtLinkInfo->bA2dpExist) {
    if (bBtHsOn) {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = A2DP + PAN(HS)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_A2DP_PANHS;
    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = A2DP + PAN(EDR)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR_A2DP;
    }
   }
  }
 } else if (numOfDiffProfile == 3) {
  if (pBtLinkInfo->bScoExist) {
   if (pBtLinkInfo->bHidExist && pBtLinkInfo->bA2dpExist) {
    BTC_PRINT(
     BTC_MSG_ALGORITHM,
     ALGO_TRACE,
     ("[BTCoex], BT Profile = SCO + HID + A2DP ==> HID\n")
    );
    algorithm = BT_8723B_1ANT_COEX_ALGO_HID;
   } else if (
    pBtLinkInfo->bHidExist && pBtLinkInfo->bPanExist
   ) {
    if (bBtHsOn) {
     BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT Profile = SCO + HID + PAN(HS)\n"));
     algorithm = BT_8723B_1ANT_COEX_ALGO_HID_A2DP;
    } else {
     BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT Profile = SCO + HID + PAN(EDR)\n"));
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR_HID;
    }
   } else if (pBtLinkInfo->bPanExist && pBtLinkInfo->bA2dpExist) {
    if (bBtHsOn) {
     BTC_PRINT(BTC_MSG_ALGORITHM, ALGO_TRACE, ("[BTCoex], BT Profile = SCO + A2DP + PAN(HS)\n"));
     algorithm = BT_8723B_1ANT_COEX_ALGO_SCO;
    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = SCO + A2DP + PAN(EDR) ==> HID\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR_HID;
    }
   }
  } else {
   if (
    pBtLinkInfo->bHidExist &&
    pBtLinkInfo->bPanExist &&
    pBtLinkInfo->bA2dpExist
   ) {
    if (bBtHsOn) {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = HID + A2DP + PAN(HS)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_HID_A2DP;
    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = HID + A2DP + PAN(EDR)\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_HID_A2DP_PANEDR;
    }
   }
  }
 } else if (numOfDiffProfile >= 3) {
  if (pBtLinkInfo->bScoExist) {
   if (
    pBtLinkInfo->bHidExist &&
    pBtLinkInfo->bPanExist &&
    pBtLinkInfo->bA2dpExist
   ) {
    if (bBtHsOn) {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], Error!!! BT Profile = SCO + HID + A2DP + PAN(HS)\n")
     );

    } else {
     BTC_PRINT(
      BTC_MSG_ALGORITHM,
      ALGO_TRACE,
      ("[BTCoex], BT Profile = SCO + HID + A2DP + PAN(EDR) ==>PAN(EDR)+HID\n")
     );
     algorithm = BT_8723B_1ANT_COEX_ALGO_PANEDR_HID;
    }
   }
  }
 }

 return algorithm;
}
