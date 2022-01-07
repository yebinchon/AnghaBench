
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int bBtLinkExist; int bPanExist; scalar_t__ bHidExist; scalar_t__ bA2dpExist; scalar_t__ bScoExist; } ;
struct TYPE_7__ {int bBtLinkExist; int bPanExist; int bScoOnly; int bA2dpOnly; int bPanOnly; int bHidOnly; scalar_t__ bHidExist; scalar_t__ bA2dpExist; scalar_t__ bScoExist; } ;
struct TYPE_6__ {int (* fBtcGet ) (TYPE_1__*,int ,int*) ;TYPE_2__ btLinkInfo; } ;
typedef TYPE_1__* PBTC_COEXIST ;
typedef TYPE_2__* PBTC_BT_LINK_INFO ;


 int BTC_GET_BL_HS_OPERATION ;
 TYPE_4__* pCoexSta ;
 int stub1 (TYPE_1__*,int ,int*) ;

__attribute__((used)) static void halbtc8723b2ant_UpdateBtLinkInfo(PBTC_COEXIST pBtCoexist)
{
 PBTC_BT_LINK_INFO pBtLinkInfo = &pBtCoexist->btLinkInfo;
 bool bBtHsOn = 0;

 pBtCoexist->fBtcGet(pBtCoexist, BTC_GET_BL_HS_OPERATION, &bBtHsOn);

 pBtLinkInfo->bBtLinkExist = pCoexSta->bBtLinkExist;
 pBtLinkInfo->bScoExist = pCoexSta->bScoExist;
 pBtLinkInfo->bA2dpExist = pCoexSta->bA2dpExist;
 pBtLinkInfo->bPanExist = pCoexSta->bPanExist;
 pBtLinkInfo->bHidExist = pCoexSta->bHidExist;


 if (bBtHsOn) {
  pBtLinkInfo->bPanExist = 1;
  pBtLinkInfo->bBtLinkExist = 1;
 }


 if (
  pBtLinkInfo->bScoExist &&
  !pBtLinkInfo->bA2dpExist &&
  !pBtLinkInfo->bPanExist &&
  !pBtLinkInfo->bHidExist
 )
  pBtLinkInfo->bScoOnly = 1;
 else
  pBtLinkInfo->bScoOnly = 0;


 if (
  !pBtLinkInfo->bScoExist &&
  pBtLinkInfo->bA2dpExist &&
  !pBtLinkInfo->bPanExist &&
  !pBtLinkInfo->bHidExist
 )
  pBtLinkInfo->bA2dpOnly = 1;
 else
  pBtLinkInfo->bA2dpOnly = 0;


 if (
  !pBtLinkInfo->bScoExist &&
  !pBtLinkInfo->bA2dpExist &&
  pBtLinkInfo->bPanExist &&
  !pBtLinkInfo->bHidExist
 )
  pBtLinkInfo->bPanOnly = 1;
 else
  pBtLinkInfo->bPanOnly = 0;


 if (
  !pBtLinkInfo->bScoExist &&
  !pBtLinkInfo->bA2dpExist &&
  !pBtLinkInfo->bPanExist &&
  pBtLinkInfo->bHidExist
 )
  pBtLinkInfo->bHidOnly = 1;
 else
  pBtLinkInfo->bHidOnly = 0;
}
